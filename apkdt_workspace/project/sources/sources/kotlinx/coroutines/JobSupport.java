package kotlinx.coroutines;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: JobSupport.kt */
@Deprecated(level = kotlin.a.ERROR, message = "This is internal API and may be removed in the future releases")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000Ú\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0001\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0006Î\u0001Ï\u0001Ð\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ+\u0010\u000f\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J%\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00112\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u001b\u001a\u00020\u00152\b\u0010\u0018\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u0002¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010#\u001a\u0004\u0018\u00010\tH\u0080@ø\u0001\u0000¢\u0006\u0004\b!\u0010\"J\u0015\u0010$\u001a\u0004\u0018\u00010\tH\u0082@ø\u0001\u0000¢\u0006\u0004\b$\u0010\"J\u0019\u0010&\u001a\u00020\u00052\b\u0010%\u001a\u0004\u0018\u00010\u0011H\u0017¢\u0006\u0004\b&\u0010'J\u001f\u0010&\u001a\u00020\u00152\u000e\u0010%\u001a\n\u0018\u00010(j\u0004\u0018\u0001`)H\u0016¢\u0006\u0004\b&\u0010*J\u0017\u0010+\u001a\u00020\u00052\b\u0010%\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b+\u0010'J\u0019\u0010,\u001a\u00020\u00052\b\u0010%\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b,\u0010-J\u0019\u0010.\u001a\u00020\u00052\b\u0010%\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b.\u0010'J\u0019\u0010/\u001a\u00020\u00052\b\u0010%\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b/\u0010-J\u0017\u00100\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0011H\u0002¢\u0006\u0004\b0\u0010'J\u0017\u00101\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0011H\u0016¢\u0006\u0004\b1\u0010'J)\u00104\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u0002022\b\u00103\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b4\u00105J)\u0010:\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u0002062\u0006\u00108\u001a\u0002072\b\u00109\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b:\u0010;J\u0019\u0010<\u001a\u00020\u00112\b\u0010%\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b<\u0010=J\u000f\u0010?\u001a\u00020>H\u0002¢\u0006\u0004\b?\u0010@J\u0019\u0010A\u001a\u0004\u0018\u0001072\u0006\u0010\u0018\u001a\u000202H\u0002¢\u0006\u0004\bA\u0010BJ\u0011\u0010C\u001a\u00060(j\u0002`)¢\u0006\u0004\bC\u0010DJ\u000f\u0010E\u001a\u00020\u0011H\u0016¢\u0006\u0004\bE\u0010FJ\u0011\u0010I\u001a\u0004\u0018\u00010\tH\u0000¢\u0006\u0004\bG\u0010HJ\u000f\u0010J\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\bJ\u0010FJ'\u0010K\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0018\u001a\u0002062\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013H\u0002¢\u0006\u0004\bK\u0010LJ\u0019\u0010M\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0018\u001a\u000202H\u0002¢\u0006\u0004\bM\u0010NJ\u0017\u0010P\u001a\u00020\u00052\u0006\u0010O\u001a\u00020\u0011H\u0014¢\u0006\u0004\bP\u0010'J\u0017\u0010S\u001a\u00020\u00152\u0006\u0010O\u001a\u00020\u0011H\u0010¢\u0006\u0004\bQ\u0010RJ\u0019\u0010W\u001a\u00020\u00152\b\u0010T\u001a\u0004\u0018\u00010\u0001H\u0000¢\u0006\u0004\bU\u0010VJF\u0010`\u001a\u00020_2\u0006\u0010X\u001a\u00020\u00052\u0006\u0010Y\u001a\u00020\u00052'\u0010^\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0011¢\u0006\f\b[\u0012\b\b\\\u0012\u0004\b\b(%\u0012\u0004\u0012\u00020\u00150Zj\u0002`]¢\u0006\u0004\b`\u0010aJ6\u0010`\u001a\u00020_2'\u0010^\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0011¢\u0006\f\b[\u0012\b\b\\\u0012\u0004\b\b(%\u0012\u0004\u0012\u00020\u00150Zj\u0002`]¢\u0006\u0004\b`\u0010bJ\u0013\u0010c\u001a\u00020\u0015H\u0086@ø\u0001\u0000¢\u0006\u0004\bc\u0010\"J\u000f\u0010d\u001a\u00020\u0005H\u0002¢\u0006\u0004\bd\u0010eJ\u0013\u0010f\u001a\u00020\u0015H\u0082@ø\u0001\u0000¢\u0006\u0004\bf\u0010\"J&\u0010i\u001a\u00020h2\u0014\u0010g\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00150ZH\u0082\b¢\u0006\u0004\bi\u0010jJ\u0019\u0010k\u001a\u00020\u00052\b\u0010%\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\bk\u0010-J\u0019\u0010m\u001a\u00020\u00052\b\u00109\u001a\u0004\u0018\u00010\tH\u0000¢\u0006\u0004\bl\u0010-J!\u0010p\u001a\u00020\u00052\b\u00109\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0000¢\u0006\u0004\bn\u0010oJD\u0010q\u001a\u0006\u0012\u0002\b\u00030\r2'\u0010^\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0011¢\u0006\f\b[\u0012\b\b\\\u0012\u0004\b\b(%\u0012\u0004\u0012\u00020\u00150Zj\u0002`]2\u0006\u0010X\u001a\u00020\u0005H\u0002¢\u0006\u0004\bq\u0010rJ\u000f\u0010v\u001a\u00020sH\u0010¢\u0006\u0004\bt\u0010uJ\u001f\u0010w\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u0011H\u0002¢\u0006\u0004\bw\u0010xJ2\u0010z\u001a\u00020\u0015\"\u000e\b\u0000\u0010y\u0018\u0001*\u0006\u0012\u0002\b\u00030\r2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010\u0011H\u0082\b¢\u0006\u0004\bz\u0010xJ\u0019\u0010X\u001a\u00020\u00152\b\u0010%\u001a\u0004\u0018\u00010\u0011H\u0014¢\u0006\u0004\bX\u0010RJ\u0019\u0010{\u001a\u00020\u00152\b\u0010\u0018\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b{\u0010|J\u000f\u0010\u007f\u001a\u00020\u0015H\u0010¢\u0006\u0004\b}\u0010~J\u0019\u0010\u0081\u0001\u001a\u00020\u00152\u0007\u0010\u0080\u0001\u001a\u00020\u0003¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\u001b\u0010\u0084\u0001\u001a\u00020\u00152\u0007\u0010\u0018\u001a\u00030\u0083\u0001H\u0002¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J\u001e\u0010\u0086\u0001\u001a\u00020\u00152\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\rH\u0002¢\u0006\u0006\b\u0086\u0001\u0010\u0087\u0001JI\u0010\u008c\u0001\u001a\u00020\u0015\"\u0005\b\u0000\u0010\u0088\u00012\u000e\u0010\u008a\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u0089\u00012\u001d\u0010g\u001a\u0019\b\u0001\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00000\u008b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\t0Zø\u0001\u0000¢\u0006\u0006\b\u008c\u0001\u0010\u008d\u0001JX\u0010\u0091\u0001\u001a\u00020\u0015\"\u0004\b\u0000\u0010y\"\u0005\b\u0001\u0010\u0088\u00012\u000e\u0010\u008a\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u0089\u00012$\u0010g\u001a \b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00010\u008b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\t0\u008e\u0001H\u0000ø\u0001\u0000¢\u0006\u0006\b\u008f\u0001\u0010\u0090\u0001J\u001e\u0010\u0093\u0001\u001a\u00020\u00152\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\rH\u0000¢\u0006\u0006\b\u0092\u0001\u0010\u0087\u0001JX\u0010\u0095\u0001\u001a\u00020\u0015\"\u0004\b\u0000\u0010y\"\u0005\b\u0001\u0010\u0088\u00012\u000e\u0010\u008a\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u0089\u00012$\u0010g\u001a \b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00010\u008b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\t0\u008e\u0001H\u0000ø\u0001\u0000¢\u0006\u0006\b\u0094\u0001\u0010\u0090\u0001J\u000f\u0010\u0096\u0001\u001a\u00020\u0005¢\u0006\u0005\b\u0096\u0001\u0010eJ\u001c\u0010\u0097\u0001\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0006\b\u0097\u0001\u0010\u0098\u0001J\u001c\u0010\u0099\u0001\u001a\u00020s2\b\u0010\u0018\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0006\b\u0099\u0001\u0010\u009a\u0001J\u0011\u0010\u009b\u0001\u001a\u00020sH\u0007¢\u0006\u0005\b\u009b\u0001\u0010uJ\u0011\u0010\u009c\u0001\u001a\u00020sH\u0016¢\u0006\u0005\b\u009c\u0001\u0010uJ,\u0010\u009d\u0001\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u0002062\b\u00109\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0006\b\u009d\u0001\u0010\u009e\u0001J,\u0010\u009f\u0001\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u0002022\b\u00103\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0006\b\u009f\u0001\u0010 \u0001J\"\u0010¡\u0001\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u0002022\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0006\b¡\u0001\u0010¢\u0001J.\u0010£\u0001\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\t2\b\u00109\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0006\b£\u0001\u0010¤\u0001J-\u0010¥\u0001\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u0002062\u0006\u0010\u001d\u001a\u0002072\b\u00109\u001a\u0004\u0018\u00010\tH\u0082\u0010¢\u0006\u0006\b¥\u0001\u0010¦\u0001J\u0019\u0010¨\u0001\u001a\u0004\u0018\u000107*\u00030§\u0001H\u0002¢\u0006\u0006\b¨\u0001\u0010©\u0001J\u001f\u0010ª\u0001\u001a\u00020\u0015*\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010\u0011H\u0002¢\u0006\u0005\bª\u0001\u0010xJ'\u0010¬\u0001\u001a\u00060(j\u0002`)*\u00020\u00112\u000b\b\u0002\u0010«\u0001\u001a\u0004\u0018\u00010sH\u0004¢\u0006\u0006\b¬\u0001\u0010\u00ad\u0001R\u0018\u0010¯\u0001\u001a\u00020\u00058T@\u0014X\u0094\u0004¢\u0006\u0007\u001a\u0005\b®\u0001\u0010eR\u001d\u0010³\u0001\u001a\t\u0012\u0004\u0012\u00020\u00010°\u00018F@\u0006¢\u0006\b\u001a\u0006\b±\u0001\u0010²\u0001R\u001a\u0010µ\u0001\u001a\u0004\u0018\u00010\u00118D@\u0004X\u0084\u0004¢\u0006\u0007\u001a\u0005\b´\u0001\u0010FR\u0018\u0010·\u0001\u001a\u00020\u00058D@\u0004X\u0084\u0004¢\u0006\u0007\u001a\u0005\b¶\u0001\u0010eR\u0018\u0010¹\u0001\u001a\u00020\u00058T@\u0014X\u0094\u0004¢\u0006\u0007\u001a\u0005\b¸\u0001\u0010eR\u0018\u0010º\u0001\u001a\u00020\u00058V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\bº\u0001\u0010eR\u0015\u0010»\u0001\u001a\u00020\u00058F@\u0006¢\u0006\u0007\u001a\u0005\b»\u0001\u0010eR\u0015\u0010¼\u0001\u001a\u00020\u00058F@\u0006¢\u0006\u0007\u001a\u0005\b¼\u0001\u0010eR\u0015\u0010½\u0001\u001a\u00020\u00058F@\u0006¢\u0006\u0007\u001a\u0005\b½\u0001\u0010eR\u001b\u0010Á\u0001\u001a\u0007\u0012\u0002\b\u00030¾\u00018F@\u0006¢\u0006\b\u001a\u0006\b¿\u0001\u0010À\u0001R\u0018\u0010Ã\u0001\u001a\u00020\u00058P@\u0010X\u0090\u0004¢\u0006\u0007\u001a\u0005\bÂ\u0001\u0010eR\u0016\u0010Æ\u0001\u001a\u00020\u00048F@\u0006¢\u0006\b\u001a\u0006\bÄ\u0001\u0010Å\u0001R\u001b\u0010Ç\u0001\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÇ\u0001\u0010È\u0001R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\t8@@\u0000X\u0080\u0004¢\u0006\u0007\u001a\u0005\bÉ\u0001\u0010HR \u0010Ë\u0001\u001a\u0004\u0018\u00010\u0011*\u0004\u0018\u00010\t8B@\u0002X\u0082\u0004¢\u0006\u0007\u001a\u0005\bÊ\u0001\u0010=R\u001d\u0010Ì\u0001\u001a\u00020\u0005*\u0002028B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\bÌ\u0001\u0010Í\u0001\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006Ñ\u0001"}, d2 = {"Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/ChildJob;", "Lkotlinx/coroutines/ParentJob;", "Lkotlinx/coroutines/selects/SelectClause0;", "", "active", "<init>", "(Z)V", "", "expect", "Lkotlinx/coroutines/NodeList;", "list", "Lkotlinx/coroutines/JobNode;", "node", "addLastAtomic", "(Ljava/lang/Object;Lkotlinx/coroutines/NodeList;Lkotlinx/coroutines/JobNode;)Z", "", "rootCause", "", "exceptions", "", "addSuppressedExceptions", "(Ljava/lang/Throwable;Ljava/util/List;)V", "state", "", "mode", "afterCompletionInternal", "(Ljava/lang/Object;I)V", "child", "Lkotlinx/coroutines/ChildHandle;", "attachChild", "(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;", "awaitInternal$kotlinx_coroutines_core", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitInternal", "awaitSuspend", "cause", HummerConstants.TASK_CANCEL, "(Ljava/lang/Throwable;)Z", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "(Ljava/util/concurrent/CancellationException;)V", "cancelCoroutine", "cancelImpl", "(Ljava/lang/Object;)Z", "cancelInternal", "cancelMakeCompleting", "cancelParent", "childCancelled", "Lkotlinx/coroutines/Incomplete;", "update", "completeStateFinalization", "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;I)V", "Lkotlinx/coroutines/JobSupport$Finishing;", "Lkotlinx/coroutines/ChildHandleNode;", "lastChild", "proposedUpdate", "continueCompleting", "(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V", "createCauseException", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "Lkotlinx/coroutines/JobCancellationException;", "createJobCancellationException", "()Lkotlinx/coroutines/JobCancellationException;", "firstChild", "(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/ChildHandleNode;", "getCancellationException", "()Ljava/util/concurrent/CancellationException;", "getChildJobCancellationCause", "()Ljava/lang/Throwable;", "getCompletedInternal$kotlinx_coroutines_core", "()Ljava/lang/Object;", "getCompletedInternal", "getCompletionExceptionOrNull", "getFinalRootCause", "(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/util/List;)Ljava/lang/Throwable;", "getOrPromoteCancellingList", "(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/NodeList;", HummerConstants.NORMAL_EXCEPTION, "handleJobException", "handleOnCompletionException$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)V", "handleOnCompletionException", "parent", "initParentJobInternal$kotlinx_coroutines_core", "(Lkotlinx/coroutines/Job;)V", "initParentJobInternal", "onCancelling", "invokeImmediately", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "handler", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnCompletion", "(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;", "join", "joinInternal", "()Z", "joinSuspend", "block", "", "loopOnState", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;", "makeCancelling", "makeCompleting$kotlinx_coroutines_core", "makeCompleting", "makeCompletingOnce$kotlinx_coroutines_core", "(Ljava/lang/Object;I)Z", "makeCompletingOnce", "makeNode", "(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/JobNode;", "", "nameString$kotlinx_coroutines_core", "()Ljava/lang/String;", "nameString", "notifyCancelling", "(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V", "T", "notifyHandlers", "onCompletionInternal", "(Ljava/lang/Object;)V", "onStartInternal$kotlinx_coroutines_core", "()V", "onStartInternal", "parentJob", "parentCancelled", "(Lkotlinx/coroutines/ParentJob;)V", "Lkotlinx/coroutines/Empty;", "promoteEmptyToNodeList", "(Lkotlinx/coroutines/Empty;)V", "promoteSingleToNodeList", "(Lkotlinx/coroutines/JobNode;)V", "R", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "Lkotlin/coroutines/Continuation;", "registerSelectClause0", "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V", "Lkotlin/Function2;", "registerSelectClause1Internal$kotlinx_coroutines_core", "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V", "registerSelectClause1Internal", "removeNode$kotlinx_coroutines_core", "removeNode", "selectAwaitCompletion$kotlinx_coroutines_core", "selectAwaitCompletion", "start", "startInternal", "(Ljava/lang/Object;)I", "stateString", "(Ljava/lang/Object;)Ljava/lang/String;", "toDebugString", "toString", "tryFinalizeFinishingState", "(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;I)Z", "tryFinalizeSimpleState", "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;I)Z", "tryMakeCancelling", "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Throwable;)Z", "tryMakeCompleting", "(Ljava/lang/Object;Ljava/lang/Object;I)I", "tryWaitForChild", "(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "nextChild", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;", "notifyCompletion", "message", "toCancellationException", "(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;", "getCancelsParent", "cancelsParent", "Lkotlin/sequences/Sequence;", "getChildren", "()Lkotlin/sequences/Sequence;", "children", "getCompletionCause", "completionCause", "getCompletionCauseHandled", "completionCauseHandled", "getHandlesException", "handlesException", "isActive", "isCancelled", "isCompleted", "isCompletedExceptionally", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "key", "getOnCancelComplete$kotlinx_coroutines_core", "onCancelComplete", "getOnJoin", "()Lkotlinx/coroutines/selects/SelectClause0;", "onJoin", "parentHandle", "Lkotlinx/coroutines/ChildHandle;", "getState$kotlinx_coroutines_core", "getExceptionOrNull", "exceptionOrNull", "isCancelling", "(Lkotlinx/coroutines/Incomplete;)Z", "AwaitContinuation", "ChildCompletion", "Finishing", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlinx.coroutines.n1, reason: from Kotlin metadata */
/* loaded from: classes.dex */
public class JobSupport implements Job, o, v1, kotlinx.coroutines.g2.a {

    /* renamed from: e, reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater f20109e = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_state");
    private volatile Object _state;
    private volatile m parentHandle;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    /* renamed from: kotlinx.coroutines.n1$a */
    /* loaded from: classes2.dex */
    public static final class a<T> extends i<T> {

        /* renamed from: l, reason: collision with root package name */
        private final JobSupport f20110l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull kotlin.coroutines.c<? super T> cVar, @NotNull JobSupport jobSupport) {
            super(cVar, 1);
            kotlin.jvm.d.h.b(cVar, "delegate");
            kotlin.jvm.d.h.b(jobSupport, "job");
            this.f20110l = jobSupport;
        }

        @Override // kotlinx.coroutines.i
        @NotNull
        public Throwable a(@NotNull Job job) {
            Throwable th;
            kotlin.jvm.d.h.b(job, "parent");
            Object e2 = this.f20110l.e();
            return (!(e2 instanceof c) || (th = ((c) e2).rootCause) == null) ? e2 instanceof r ? ((r) e2).f20135a : job.j() : th;
        }

        @Override // kotlinx.coroutines.i
        @NotNull
        protected String g() {
            return "AwaitContinuation";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    /* renamed from: kotlinx.coroutines.n1$b */
    /* loaded from: classes2.dex */
    public static final class b extends m1<Job> {

        /* renamed from: i, reason: collision with root package name */
        private final JobSupport f20111i;

        /* renamed from: j, reason: collision with root package name */
        private final c f20112j;

        /* renamed from: k, reason: collision with root package name */
        private final n f20113k;

        /* renamed from: l, reason: collision with root package name */
        private final Object f20114l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull JobSupport jobSupport, @NotNull c cVar, @NotNull n nVar, @Nullable Object obj) {
            super(nVar.f20108i);
            kotlin.jvm.d.h.b(jobSupport, "parent");
            kotlin.jvm.d.h.b(cVar, "state");
            kotlin.jvm.d.h.b(nVar, "child");
            this.f20111i = jobSupport;
            this.f20112j = cVar;
            this.f20113k = nVar;
            this.f20114l = obj;
        }

        @Override // kotlinx.coroutines.v
        public void b(@Nullable Throwable th) {
            this.f20111i.a(this.f20112j, this.f20113k, this.f20114l);
        }

        @Override // kotlin.jvm.c.b
        public /* bridge */ /* synthetic */ kotlin.t invoke(Throwable th) {
            b(th);
            return kotlin.t.f19946a;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        @NotNull
        public String toString() {
            return "ChildCompletion[" + this.f20113k + ", " + this.f20114l + ']';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    /* renamed from: kotlinx.coroutines.n1$c */
    /* loaded from: classes2.dex */
    public static final class c implements b1 {
        private volatile Object _exceptionsHolder;

        /* renamed from: e, reason: collision with root package name */
        @NotNull
        private final s1 f20115e;

        @JvmField
        public volatile boolean isCompleting;

        @JvmField
        @Nullable
        public volatile Throwable rootCause;

        public c(@NotNull s1 s1Var, boolean z, @Nullable Throwable th) {
            kotlin.jvm.d.h.b(s1Var, "list");
            this.f20115e = s1Var;
            this.isCompleting = z;
            this.rootCause = th;
        }

        private final ArrayList<Throwable> d() {
            return new ArrayList<>(4);
        }

        @Override // kotlinx.coroutines.b1
        @NotNull
        public s1 a() {
            return this.f20115e;
        }

        public final boolean b() {
            return this.rootCause != null;
        }

        public final boolean c() {
            kotlinx.coroutines.internal.t tVar;
            Object obj = this._exceptionsHolder;
            tVar = o1.f20118a;
            return obj == tVar;
        }

        @Override // kotlinx.coroutines.b1
        public boolean i() {
            return this.rootCause == null;
        }

        @NotNull
        public String toString() {
            return "Finishing[cancelling=" + b() + ", completing=" + this.isCompleting + ", rootCause=" + this.rootCause + ", exceptions=" + this._exceptionsHolder + ", list=" + a() + ']';
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(@NotNull Throwable th) {
            kotlin.jvm.d.h.b(th, HummerConstants.NORMAL_EXCEPTION);
            Throwable th2 = this.rootCause;
            if (th2 == null) {
                this.rootCause = th;
                return;
            }
            if (th == th2) {
                return;
            }
            Object obj = this._exceptionsHolder;
            if (obj == null) {
                this._exceptionsHolder = th;
                return;
            }
            if (obj instanceof Throwable) {
                if (th == obj) {
                    return;
                }
                ArrayList<Throwable> d2 = d();
                d2.add(obj);
                d2.add(th);
                this._exceptionsHolder = d2;
                return;
            }
            if (obj instanceof ArrayList) {
                ((ArrayList) obj).add(th);
                return;
            }
            throw new IllegalStateException(("State is " + obj).toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        public final List<Throwable> b(@Nullable Throwable th) {
            ArrayList<Throwable> arrayList;
            kotlinx.coroutines.internal.t tVar;
            Object obj = this._exceptionsHolder;
            if (obj == null) {
                arrayList = d();
            } else if (obj instanceof Throwable) {
                ArrayList<Throwable> d2 = d();
                d2.add(obj);
                arrayList = d2;
            } else {
                if (!(obj instanceof ArrayList)) {
                    throw new IllegalStateException(("State is " + obj).toString());
                }
                if (obj == null) {
                    throw new kotlin.r("null cannot be cast to non-null type kotlin.collections.ArrayList<kotlin.Throwable> /* = java.util.ArrayList<kotlin.Throwable> */");
                }
                arrayList = (ArrayList) obj;
            }
            Throwable th2 = this.rootCause;
            if (th2 != null) {
                arrayList.add(0, th2);
            }
            if (th != null && (!kotlin.jvm.d.h.a(th, th2))) {
                arrayList.add(th);
            }
            tVar = o1.f20118a;
            this._exceptionsHolder = tVar;
            return arrayList;
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    /* renamed from: kotlinx.coroutines.n1$d */
    /* loaded from: classes2.dex */
    public static final class d extends LockFreeLinkedListNode.a {

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ JobSupport f20116d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Object f20117e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(LockFreeLinkedListNode lockFreeLinkedListNode, LockFreeLinkedListNode lockFreeLinkedListNode2, JobSupport jobSupport, Object obj) {
            super(lockFreeLinkedListNode2);
            this.f20116d = jobSupport;
            this.f20117e = obj;
        }

        @Override // kotlinx.coroutines.internal.d
        @Nullable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Object b(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
            kotlin.jvm.d.h.b(lockFreeLinkedListNode, "affected");
            if (this.f20116d.e() == this.f20117e) {
                return null;
            }
            return kotlinx.coroutines.internal.j.a();
        }
    }

    public JobSupport(boolean z) {
        v0 v0Var;
        if (!z) {
            v0Var = o1.f20119b;
        } else {
            v0Var = o1.f20120c;
        }
        this._state = v0Var;
    }

    private final boolean b(b1 b1Var, Object obj, int i2) {
        Object b2;
        if ((b1Var instanceof v0) || (b1Var instanceof m1)) {
            if (!(obj instanceof r)) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f20109e;
                b2 = o1.b(obj);
                if (!atomicReferenceFieldUpdater.compareAndSet(this, b1Var, b2)) {
                    return false;
                }
                d((Throwable) null);
                a(obj);
                a(b1Var, obj, i2);
                return true;
            }
            throw new IllegalStateException("Check failed.".toString());
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    private final Throwable d(Object obj) {
        if (obj != null ? obj instanceof Throwable : true) {
            return obj != null ? (Throwable) obj : m();
        }
        if (obj != null) {
            return ((v1) obj).k();
        }
        throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
    }

    private final Throwable e(@Nullable Object obj) {
        if (!(obj instanceof r)) {
            obj = null;
        }
        r rVar = (r) obj;
        if (rVar != null) {
            return rVar.f20135a;
        }
        return null;
    }

    private final int g(Object obj) {
        v0 v0Var;
        if (obj instanceof v0) {
            if (((v0) obj).i()) {
                return 0;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f20109e;
            v0Var = o1.f20120c;
            if (!atomicReferenceFieldUpdater.compareAndSet(this, obj, v0Var)) {
                return -1;
            }
            h();
            return 1;
        }
        if (!(obj instanceof a1)) {
            return 0;
        }
        if (!f20109e.compareAndSet(this, obj, ((a1) obj).a())) {
            return -1;
        }
        h();
        return 1;
    }

    private final String h(Object obj) {
        if (!(obj instanceof c)) {
            return obj instanceof b1 ? ((b1) obj).i() ? "Active" : "New" : obj instanceof r ? "Cancelled" : "Completed";
        }
        c cVar = (c) obj;
        return cVar.b() ? "Cancelling" : cVar.isCompleting ? "Completing" : "Active";
    }

    private final h1 m() {
        return new h1("Job was cancelled", null, this);
    }

    protected void a(@Nullable Object obj) {
    }

    protected void a(@Nullable Object obj, int i2) {
    }

    protected boolean b() {
        return true;
    }

    protected boolean b(@NotNull Throwable th) {
        kotlin.jvm.d.h.b(th, HummerConstants.NORMAL_EXCEPTION);
        return false;
    }

    public void c(@NotNull Throwable th) {
        kotlin.jvm.d.h.b(th, HummerConstants.NORMAL_EXCEPTION);
        throw th;
    }

    protected boolean c() {
        return true;
    }

    protected void d(@Nullable Throwable th) {
    }

    public boolean d() {
        return false;
    }

    public final boolean f() {
        return !(e() instanceof b1);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, @NotNull kotlin.jvm.c.c<? super R, ? super CoroutineContext.b, ? extends R> cVar) {
        kotlin.jvm.d.h.b(cVar, "operation");
        return (R) Job.a.a(this, r, cVar);
    }

    @Override // kotlin.coroutines.CoroutineContext.b, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.b> E get(@NotNull CoroutineContext.c<E> cVar) {
        kotlin.jvm.d.h.b(cVar, "key");
        return (E) Job.a.a(this, cVar);
    }

    @Override // kotlin.coroutines.CoroutineContext.b
    @NotNull
    public final CoroutineContext.c<?> getKey() {
        return Job.f20051d;
    }

    public void h() {
    }

    @Override // kotlinx.coroutines.Job
    public boolean i() {
        Object e2 = e();
        return (e2 instanceof b1) && ((b1) e2).i();
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final CancellationException j() {
        Object e2 = e();
        if (e2 instanceof c) {
            Throwable th = ((c) e2).rootCause;
            if (th != null) {
                CancellationException a2 = a(th, j0.a(this) + " is cancelling");
                if (a2 != null) {
                    return a2;
                }
            }
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        if (!(e2 instanceof b1)) {
            if (e2 instanceof r) {
                return a(this, ((r) e2).f20135a, null, 1, null);
            }
            return new h1(j0.a(this) + " has completed normally", null, this);
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    @Override // kotlinx.coroutines.v1
    @NotNull
    public Throwable k() {
        Throwable th;
        Object e2 = e();
        if (e2 instanceof c) {
            th = ((c) e2).rootCause;
        } else if (!(e2 instanceof b1)) {
            th = e2 instanceof r ? ((r) e2).f20135a : null;
        } else {
            throw new IllegalStateException(("Cannot be cancelling child in this state: " + e2).toString());
        }
        if (th != null && (!c() || (th instanceof CancellationException))) {
            return th;
        }
        return new h1("Parent job is " + h(e2), th, this);
    }

    @InternalCoroutinesApi
    @NotNull
    public final String l() {
        return g() + '{' + h(e()) + '}';
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.c<?> cVar) {
        kotlin.jvm.d.h.b(cVar, "key");
        return Job.a.b(this, cVar);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        return Job.a.a(this, coroutineContext);
    }

    @Override // kotlinx.coroutines.Job
    public final boolean start() {
        int g2;
        do {
            g2 = g(e());
            if (g2 == 0) {
                return false;
            }
        } while (g2 != 1);
        return true;
    }

    @NotNull
    public String toString() {
        return l() + '@' + j0.b(this);
    }

    private final boolean e(Throwable th) {
        m mVar;
        if (th instanceof CancellationException) {
            return true;
        }
        return b() && (mVar = this.parentHandle) != null && mVar.a(th);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0086, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean f(java.lang.Object r8) {
        /*
            r7 = this;
            r0 = 0
            r1 = r0
        L2:
            java.lang.Object r2 = r7.e()
            boolean r3 = r2 instanceof kotlinx.coroutines.JobSupport.c
            r4 = 0
            r5 = 1
            if (r3 == 0) goto L4b
            monitor-enter(r2)
            r3 = r2
            kotlinx.coroutines.n1$c r3 = (kotlinx.coroutines.JobSupport.c) r3     // Catch: java.lang.Throwable -> L48
            boolean r3 = r3.c()     // Catch: java.lang.Throwable -> L48
            if (r3 == 0) goto L18
            monitor-exit(r2)
            return r4
        L18:
            r3 = r2
            kotlinx.coroutines.n1$c r3 = (kotlinx.coroutines.JobSupport.c) r3     // Catch: java.lang.Throwable -> L48
            boolean r3 = r3.b()     // Catch: java.lang.Throwable -> L48
            if (r8 != 0) goto L23
            if (r3 != 0) goto L30
        L23:
            if (r1 == 0) goto L26
            goto L2a
        L26:
            java.lang.Throwable r1 = r7.d(r8)     // Catch: java.lang.Throwable -> L48
        L2a:
            r8 = r2
            kotlinx.coroutines.n1$c r8 = (kotlinx.coroutines.JobSupport.c) r8     // Catch: java.lang.Throwable -> L48
            r8.a(r1)     // Catch: java.lang.Throwable -> L48
        L30:
            r8 = r2
            kotlinx.coroutines.n1$c r8 = (kotlinx.coroutines.JobSupport.c) r8     // Catch: java.lang.Throwable -> L48
            java.lang.Throwable r8 = r8.rootCause     // Catch: java.lang.Throwable -> L48
            r1 = r3 ^ 1
            if (r1 == 0) goto L3a
            goto L3b
        L3a:
            r8 = r0
        L3b:
            monitor-exit(r2)
            if (r8 == 0) goto L47
            kotlinx.coroutines.n1$c r2 = (kotlinx.coroutines.JobSupport.c) r2
            kotlinx.coroutines.s1 r0 = r2.a()
            r7.a(r0, r8)
        L47:
            return r5
        L48:
            r8 = move-exception
            monitor-exit(r2)
            throw r8
        L4b:
            boolean r3 = r2 instanceof kotlinx.coroutines.b1
            if (r3 == 0) goto La2
            if (r1 == 0) goto L52
            goto L56
        L52:
            java.lang.Throwable r1 = r7.d(r8)
        L56:
            r3 = r2
            kotlinx.coroutines.b1 r3 = (kotlinx.coroutines.b1) r3
            boolean r6 = r3.i()
            if (r6 == 0) goto L66
            boolean r2 = r7.a(r3, r1)
            if (r2 == 0) goto L2
            return r5
        L66:
            kotlinx.coroutines.r r3 = new kotlinx.coroutines.r
            r6 = 2
            r3.<init>(r1, r4, r6, r0)
            int r3 = r7.a(r2, r3, r4)
            if (r3 == 0) goto L87
            if (r3 == r5) goto L86
            if (r3 == r6) goto L86
            r2 = 3
            if (r3 != r2) goto L7a
            goto L2
        L7a:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "unexpected result"
            java.lang.String r0 = r0.toString()
            r8.<init>(r0)
            throw r8
        L86:
            return r5
        L87:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r0 = "Cannot happen in "
            r8.append(r0)
            r8.append(r2)
            java.lang.String r8 = r8.toString()
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r8 = r8.toString()
            r0.<init>(r8)
            throw r0
        La2:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport.f(java.lang.Object):boolean");
    }

    public final void a(@Nullable Job job) {
        if (!(this.parentHandle == null)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (job == null) {
            this.parentHandle = t1.f20140e;
            return;
        }
        job.start();
        m a2 = job.a(this);
        this.parentHandle = a2;
        if (f()) {
            a2.dispose();
            this.parentHandle = t1.f20140e;
        }
    }

    @Nullable
    final /* synthetic */ Object c(@NotNull kotlin.coroutines.c<Object> cVar) {
        kotlin.coroutines.c a2;
        Object a3;
        a2 = kotlin.coroutines.h.c.a(cVar);
        a aVar = new a(a2, this);
        j.a(aVar, b((kotlin.jvm.c.b<? super Throwable, kotlin.t>) new w1(this, aVar)));
        Object d2 = aVar.d();
        a3 = kotlin.coroutines.h.d.a();
        if (d2 == a3) {
            kotlin.coroutines.jvm.internal.g.c(cVar);
        }
        return d2;
    }

    @Nullable
    public final Object e() {
        while (true) {
            Object obj = this._state;
            if (!(obj instanceof kotlinx.coroutines.internal.q)) {
                return obj;
            }
            ((kotlinx.coroutines.internal.q) obj).a(this);
        }
    }

    private final boolean c(Object obj) {
        int a2;
        do {
            Object e2 = e();
            if (!(e2 instanceof b1) || (((e2 instanceof c) && ((c) e2).isCompleting) || (a2 = a(e2, new r(d(obj), false, 2, null), 0)) == 0)) {
                return false;
            }
            if (a2 == 1 || a2 == 2) {
                return true;
            }
        } while (a2 == 3);
        throw new IllegalStateException("unexpected result".toString());
    }

    @NotNull
    public String g() {
        return j0.a(this);
    }

    @NotNull
    public final t0 b(@NotNull kotlin.jvm.c.b<? super Throwable, kotlin.t> bVar) {
        kotlin.jvm.d.h.b(bVar, "handler");
        return a(false, true, bVar);
    }

    private final void b(m1<?> m1Var) {
        m1Var.a(new s1());
        f20109e.compareAndSet(this, m1Var, m1Var.c());
    }

    private final boolean a(c cVar, Object obj, int i2) {
        boolean b2;
        Throwable a2;
        Object b3;
        if (e() == cVar) {
            if (!cVar.c()) {
                if (cVar.isCompleting) {
                    r rVar = (r) (!(obj instanceof r) ? null : obj);
                    Throwable th = rVar != null ? rVar.f20135a : null;
                    synchronized (cVar) {
                        b2 = cVar.b();
                        List<Throwable> b4 = cVar.b(th);
                        a2 = a(cVar, b4);
                        if (a2 != null) {
                            a(a2, b4);
                        }
                    }
                    if (a2 != null && a2 != th) {
                        obj = new r(a2, false, 2, null);
                    }
                    if (a2 != null) {
                        if (e(a2) || b(a2)) {
                            if (obj == null) {
                                throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                            }
                            ((r) obj).b();
                        }
                    }
                    if (!b2) {
                        d(a2);
                    }
                    a(obj);
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f20109e;
                    b3 = o1.b(obj);
                    if (atomicReferenceFieldUpdater.compareAndSet(this, cVar, b3)) {
                        a((b1) cVar, obj, i2);
                        return true;
                    }
                    throw new IllegalArgumentException(("Unexpected state: " + this._state + ", expected: " + cVar + ", update: " + obj).toString());
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    private final boolean b(Object obj) {
        if (d() && c(obj)) {
            return true;
        }
        return f(obj);
    }

    private final s1 b(b1 b1Var) {
        s1 a2 = b1Var.a();
        if (a2 != null) {
            return a2;
        }
        if (b1Var instanceof v0) {
            return new s1();
        }
        if (b1Var instanceof m1) {
            b((m1<?>) b1Var);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + b1Var).toString());
    }

    private final boolean b(c cVar, n nVar, Object obj) {
        while (Job.a.a(nVar.f20108i, false, false, new b(this, cVar, nVar, obj), 1, null) == t1.f20140e) {
            nVar = a((LockFreeLinkedListNode) nVar);
            if (nVar == null) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    public final Object b(@NotNull kotlin.coroutines.c<Object> cVar) {
        Object e2;
        do {
            e2 = e();
            if (!(e2 instanceof b1)) {
                if (e2 instanceof r) {
                    Throwable th = ((r) e2).f20135a;
                    if (!kotlinx.coroutines.internal.s.a(th)) {
                        kotlin.jvm.d.g.a(0);
                        if (cVar instanceof kotlin.coroutines.jvm.internal.e) {
                            throw kotlinx.coroutines.internal.s.a(th, (kotlin.coroutines.jvm.internal.e) cVar);
                        }
                        throw th;
                    }
                    throw th;
                }
                return o1.c(e2);
            }
        } while (g(e2) < 0);
        return c(cVar);
    }

    private final Throwable a(c cVar, List<? extends Throwable> list) {
        Object obj;
        if (list.isEmpty()) {
            if (cVar.b()) {
                return m();
            }
            return null;
        }
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (!(((Throwable) obj) instanceof CancellationException)) {
                break;
            }
        }
        Throwable th = (Throwable) obj;
        return th != null ? th : list.get(0);
    }

    private final void b(@NotNull s1 s1Var, Throwable th) {
        Object b2 = s1Var.b();
        if (b2 != null) {
            w wVar = null;
            for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) b2; !kotlin.jvm.d.h.a(lockFreeLinkedListNode, s1Var); lockFreeLinkedListNode = lockFreeLinkedListNode.c()) {
                if (lockFreeLinkedListNode instanceof m1) {
                    m1 m1Var = (m1) lockFreeLinkedListNode;
                    try {
                        m1Var.b(th);
                    } catch (Throwable th2) {
                        if (wVar != null) {
                            kotlin.c.a(wVar, th2);
                            if (wVar != null) {
                            }
                        }
                        wVar = new w("Exception in completion handler " + m1Var + " for " + this, th2);
                        kotlin.t tVar = kotlin.t.f19946a;
                    }
                }
            }
            if (wVar != null) {
                c((Throwable) wVar);
                return;
            }
            return;
        }
        throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
    }

    private final void a(Throwable th, List<? extends Throwable> list) {
        if (list.size() <= 1) {
            return;
        }
        Set a2 = kotlinx.coroutines.internal.e.a(list.size());
        Throwable d2 = kotlinx.coroutines.internal.s.d(th);
        Iterator<? extends Throwable> it = list.iterator();
        while (it.hasNext()) {
            Throwable d3 = kotlinx.coroutines.internal.s.d(it.next());
            if (d3 != th && d3 != d2 && !(d3 instanceof CancellationException) && a2.add(d3)) {
                kotlin.c.a(th, d3);
            }
        }
    }

    private final void a(b1 b1Var, Object obj, int i2) {
        m mVar = this.parentHandle;
        if (mVar != null) {
            mVar.dispose();
            this.parentHandle = t1.f20140e;
        }
        r rVar = (r) (!(obj instanceof r) ? null : obj);
        Throwable th = rVar != null ? rVar.f20135a : null;
        if (b1Var instanceof m1) {
            try {
                ((m1) b1Var).b(th);
            } catch (Throwable th2) {
                c((Throwable) new w("Exception in completion handler " + b1Var + " for " + this, th2));
            }
        } else {
            s1 a2 = b1Var.a();
            if (a2 != null) {
                b(a2, th);
            }
        }
        a(obj, i2);
    }

    public final boolean b(@Nullable Object obj, int i2) {
        int a2;
        do {
            a2 = a(e(), obj, i2);
            if (a2 == 0) {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, e(obj));
            }
            if (a2 == 1) {
                return true;
            }
            if (a2 == 2) {
                return false;
            }
        } while (a2 == 3);
        throw new IllegalStateException("unexpected result".toString());
    }

    private final void a(s1 s1Var, Throwable th) {
        d(th);
        Object b2 = s1Var.b();
        if (b2 != null) {
            w wVar = null;
            for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) b2; !kotlin.jvm.d.h.a(lockFreeLinkedListNode, s1Var); lockFreeLinkedListNode = lockFreeLinkedListNode.c()) {
                if (lockFreeLinkedListNode instanceof i1) {
                    m1 m1Var = (m1) lockFreeLinkedListNode;
                    try {
                        m1Var.b(th);
                    } catch (Throwable th2) {
                        if (wVar != null) {
                            kotlin.c.a(wVar, th2);
                            if (wVar != null) {
                            }
                        }
                        wVar = new w("Exception in completion handler " + m1Var + " for " + this, th2);
                        kotlin.t tVar = kotlin.t.f19946a;
                    }
                }
            }
            if (wVar != null) {
                c((Throwable) wVar);
            }
            e(th);
            return;
        }
        throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
    }

    public static /* synthetic */ CancellationException a(JobSupport jobSupport, Throwable th, String str, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                str = null;
            }
            return jobSupport.a(th, str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
    }

    @NotNull
    protected final CancellationException a(@NotNull Throwable th, @Nullable String str) {
        kotlin.jvm.d.h.b(th, "$this$toCancellationException");
        CancellationException cancellationException = (CancellationException) (!(th instanceof CancellationException) ? null : th);
        if (cancellationException == null) {
            if (str == null) {
                str = j0.a(th) + " was cancelled";
            }
            cancellationException = new h1(str, th, this);
        }
        return cancellationException;
    }

    private final m1<?> a(kotlin.jvm.c.b<? super Throwable, kotlin.t> bVar, boolean z) {
        if (z) {
            i1 i1Var = (i1) (bVar instanceof i1 ? bVar : null);
            if (i1Var != null) {
                if (!(i1Var.f20107h == this)) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                if (i1Var != null) {
                    return i1Var;
                }
            }
            return new e1(this, bVar);
        }
        m1<?> m1Var = (m1) (bVar instanceof m1 ? bVar : null);
        if (m1Var != null) {
            if (!(m1Var.f20107h == this && !(m1Var instanceof i1))) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (m1Var != null) {
                return m1Var;
            }
        }
        return new f1(this, bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.coroutines.a1] */
    private final void a(v0 v0Var) {
        s1 s1Var = new s1();
        if (!v0Var.i()) {
            s1Var = new a1(s1Var);
        }
        f20109e.compareAndSet(this, v0Var, s1Var);
    }

    @Override // kotlinx.coroutines.o
    public final void a(@NotNull v1 v1Var) {
        kotlin.jvm.d.h.b(v1Var, "parentJob");
        b(v1Var);
    }

    public boolean a(@NotNull Throwable th) {
        kotlin.jvm.d.h.b(th, "cause");
        return b((Object) th) && c();
    }

    private final boolean a(b1 b1Var, Throwable th) {
        if (!(b1Var instanceof c)) {
            if (b1Var.i()) {
                s1 b2 = b(b1Var);
                if (b2 == null) {
                    return false;
                }
                if (!f20109e.compareAndSet(this, b1Var, new c(b2, false, th))) {
                    return false;
                }
                a(b2, th);
                return true;
            }
            throw new IllegalStateException("Check failed.".toString());
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    private final int a(Object obj, Object obj2, int i2) {
        if (!(obj instanceof b1)) {
            return 0;
        }
        if (((obj instanceof v0) || (obj instanceof m1)) && !(obj instanceof n) && !(obj2 instanceof r)) {
            return !b((b1) obj, obj2, i2) ? 3 : 1;
        }
        b1 b1Var = (b1) obj;
        s1 b2 = b(b1Var);
        if (b2 == null) {
            return 3;
        }
        c cVar = (c) (!(obj instanceof c) ? null : obj);
        if (cVar == null) {
            cVar = new c(b2, false, null);
        }
        synchronized (cVar) {
            if (cVar.isCompleting) {
                return 0;
            }
            cVar.isCompleting = true;
            if (cVar != obj && !f20109e.compareAndSet(this, obj, cVar)) {
                return 3;
            }
            if (!cVar.c()) {
                boolean b3 = cVar.b();
                r rVar = (r) (!(obj2 instanceof r) ? null : obj2);
                if (rVar != null) {
                    cVar.a(rVar.f20135a);
                }
                Throwable th = cVar.rootCause;
                if (!(!b3)) {
                    th = null;
                }
                kotlin.t tVar = kotlin.t.f19946a;
                if (th != null) {
                    a(b2, th);
                }
                n a2 = a(b1Var);
                if (a2 == null || !b(cVar, a2, obj2)) {
                    return a(cVar, obj2, i2) ? 1 : 3;
                }
                return 2;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    private final n a(b1 b1Var) {
        n nVar = (n) (!(b1Var instanceof n) ? null : b1Var);
        if (nVar != null) {
            return nVar;
        }
        s1 a2 = b1Var.a();
        if (a2 != null) {
            return a((LockFreeLinkedListNode) a2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(c cVar, n nVar, Object obj) {
        if (e() == cVar) {
            n a2 = a((LockFreeLinkedListNode) nVar);
            if ((a2 == null || !b(cVar, a2, obj)) && a(cVar, obj, 0)) {
            }
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    private final n a(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.g()) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.e();
        }
        while (true) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.c();
            if (!lockFreeLinkedListNode.g()) {
                if (lockFreeLinkedListNode instanceof n) {
                    return (n) lockFreeLinkedListNode;
                }
                if (lockFreeLinkedListNode instanceof s1) {
                    return null;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final m a(@NotNull o oVar) {
        kotlin.jvm.d.h.b(oVar, "child");
        t0 a2 = Job.a.a(this, true, false, new n(this, oVar), 2, null);
        if (a2 != null) {
            return (m) a2;
        }
        throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final t0 a(boolean z, boolean z2, @NotNull kotlin.jvm.c.b<? super Throwable, kotlin.t> bVar) {
        Throwable th;
        kotlin.jvm.d.h.b(bVar, "handler");
        m1<?> m1Var = null;
        while (true) {
            Object e2 = e();
            if (e2 instanceof v0) {
                v0 v0Var = (v0) e2;
                if (v0Var.i()) {
                    if (m1Var == null) {
                        m1Var = a(bVar, z);
                    }
                    if (f20109e.compareAndSet(this, e2, m1Var)) {
                        return m1Var;
                    }
                } else {
                    a(v0Var);
                }
            } else if (e2 instanceof b1) {
                s1 a2 = ((b1) e2).a();
                if (a2 != null) {
                    t0 t0Var = t1.f20140e;
                    if (z && (e2 instanceof c)) {
                        synchronized (e2) {
                            th = ((c) e2).rootCause;
                            if (th == null || ((bVar instanceof n) && !((c) e2).isCompleting)) {
                                if (m1Var == null) {
                                    m1Var = a(bVar, z);
                                }
                                if (a(e2, a2, m1Var)) {
                                    if (th == null) {
                                        return m1Var;
                                    }
                                    t0Var = m1Var;
                                }
                            }
                            kotlin.t tVar = kotlin.t.f19946a;
                        }
                    } else {
                        th = null;
                    }
                    if (th != null) {
                        if (z2) {
                            bVar.invoke(th);
                        }
                        return t0Var;
                    }
                    if (m1Var == null) {
                        m1Var = a(bVar, z);
                    }
                    if (a(e2, a2, m1Var)) {
                        return m1Var;
                    }
                } else {
                    if (e2 == null) {
                        throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.JobNode<*>");
                    }
                    b((m1<?>) e2);
                }
            } else {
                if (z2) {
                    if (!(e2 instanceof r)) {
                        e2 = null;
                    }
                    r rVar = (r) e2;
                    bVar.invoke(rVar != null ? rVar.f20135a : null);
                }
                return t1.f20140e;
            }
        }
    }

    private final boolean a(Object obj, s1 s1Var, m1<?> m1Var) {
        int a2;
        d dVar = new d(m1Var, m1Var, this, obj);
        do {
            Object d2 = s1Var.d();
            if (d2 != null) {
                a2 = ((LockFreeLinkedListNode) d2).a(m1Var, s1Var, dVar);
                if (a2 == 1) {
                    return true;
                }
            } else {
                throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
        } while (a2 != 2);
        return false;
    }

    public final void a(@NotNull m1<?> m1Var) {
        Object e2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        v0 v0Var;
        kotlin.jvm.d.h.b(m1Var, "node");
        do {
            e2 = e();
            if (!(e2 instanceof m1)) {
                if (!(e2 instanceof b1) || ((b1) e2).a() == null) {
                    return;
                }
                m1Var.h();
                return;
            }
            if (e2 != m1Var) {
                return;
            }
            atomicReferenceFieldUpdater = f20109e;
            v0Var = o1.f20120c;
        } while (!atomicReferenceFieldUpdater.compareAndSet(this, e2, v0Var));
    }
}
