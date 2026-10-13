.class public Lkotlinx/coroutines/n1;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/g1;
.implements Lkotlinx/coroutines/o;
.implements Lkotlinx/coroutines/v1;
.implements Lkotlinx/coroutines/g2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/n1$c;,
        Lkotlinx/coroutines/n1$b;,
        Lkotlinx/coroutines/n1$a;
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    level = .enum Lkotlin/a;->ERROR:Lkotlin/a;
    message = "This is internal API and may be removed in the future releases"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00da\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0001\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0006\u00ce\u0001\u00cf\u0001\u00d0\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J+\u0010\u000f\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J%\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00112\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0013H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J!\u0010\u001b\u001a\u00020\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0015\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010#\u001a\u0004\u0018\u00010\tH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008!\u0010\"J\u0015\u0010$\u001a\u0004\u0018\u00010\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008$\u0010\"J\u0019\u0010&\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010\u0011H\u0017\u00a2\u0006\u0004\u0008&\u0010\'J\u001f\u0010&\u001a\u00020\u00152\u000e\u0010%\u001a\n\u0018\u00010(j\u0004\u0018\u0001`)H\u0016\u00a2\u0006\u0004\u0008&\u0010*J\u0017\u0010+\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008+\u0010\'J\u0019\u0010,\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u0019\u0010.\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008.\u0010\'J\u0019\u0010/\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008/\u0010-J\u0017\u00100\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u00080\u0010\'J\u0017\u00101\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u00081\u0010\'J)\u00104\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u0002022\u0008\u00103\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u00084\u00105J)\u0010:\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u0002062\u0006\u00108\u001a\u0002072\u0008\u00109\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008:\u0010;J\u0019\u0010<\u001a\u00020\u00112\u0008\u0010%\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008<\u0010=J\u000f\u0010?\u001a\u00020>H\u0002\u00a2\u0006\u0004\u0008?\u0010@J\u0019\u0010A\u001a\u0004\u0018\u0001072\u0006\u0010\u0018\u001a\u000202H\u0002\u00a2\u0006\u0004\u0008A\u0010BJ\u0011\u0010C\u001a\u00060(j\u0002`)\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010E\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008E\u0010FJ\u0011\u0010I\u001a\u0004\u0018\u00010\tH\u0000\u00a2\u0006\u0004\u0008G\u0010HJ\u000f\u0010J\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008J\u0010FJ\'\u0010K\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0018\u001a\u0002062\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0013H\u0002\u00a2\u0006\u0004\u0008K\u0010LJ\u0019\u0010M\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0018\u001a\u000202H\u0002\u00a2\u0006\u0004\u0008M\u0010NJ\u0017\u0010P\u001a\u00020\u00052\u0006\u0010O\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008P\u0010\'J\u0017\u0010S\u001a\u00020\u00152\u0006\u0010O\u001a\u00020\u0011H\u0010\u00a2\u0006\u0004\u0008Q\u0010RJ\u0019\u0010W\u001a\u00020\u00152\u0008\u0010T\u001a\u0004\u0018\u00010\u0001H\u0000\u00a2\u0006\u0004\u0008U\u0010VJF\u0010`\u001a\u00020_2\u0006\u0010X\u001a\u00020\u00052\u0006\u0010Y\u001a\u00020\u00052\'\u0010^\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0011\u00a2\u0006\u000c\u0008[\u0012\u0008\u0008\\\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u00150Zj\u0002`]\u00a2\u0006\u0004\u0008`\u0010aJ6\u0010`\u001a\u00020_2\'\u0010^\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0011\u00a2\u0006\u000c\u0008[\u0012\u0008\u0008\\\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u00150Zj\u0002`]\u00a2\u0006\u0004\u0008`\u0010bJ\u0013\u0010c\u001a\u00020\u0015H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008c\u0010\"J\u000f\u0010d\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008d\u0010eJ\u0013\u0010f\u001a\u00020\u0015H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008f\u0010\"J&\u0010i\u001a\u00020h2\u0014\u0010g\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00150ZH\u0082\u0008\u00a2\u0006\u0004\u0008i\u0010jJ\u0019\u0010k\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008k\u0010-J\u0019\u0010m\u001a\u00020\u00052\u0008\u00109\u001a\u0004\u0018\u00010\tH\u0000\u00a2\u0006\u0004\u0008l\u0010-J!\u0010p\u001a\u00020\u00052\u0008\u00109\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0000\u00a2\u0006\u0004\u0008n\u0010oJD\u0010q\u001a\u0006\u0012\u0002\u0008\u00030\r2\'\u0010^\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0011\u00a2\u0006\u000c\u0008[\u0012\u0008\u0008\\\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u00150Zj\u0002`]2\u0006\u0010X\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008q\u0010rJ\u000f\u0010v\u001a\u00020sH\u0010\u00a2\u0006\u0004\u0008t\u0010uJ\u001f\u0010w\u001a\u00020\u00152\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008w\u0010xJ2\u0010z\u001a\u00020\u0015\"\u000e\u0008\u0000\u0010y\u0018\u0001*\u0006\u0012\u0002\u0008\u00030\r2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010\u0011H\u0082\u0008\u00a2\u0006\u0004\u0008z\u0010xJ\u0019\u0010X\u001a\u00020\u00152\u0008\u0010%\u001a\u0004\u0018\u00010\u0011H\u0014\u00a2\u0006\u0004\u0008X\u0010RJ\u0019\u0010{\u001a\u00020\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008{\u0010|J\u000f\u0010\u007f\u001a\u00020\u0015H\u0010\u00a2\u0006\u0004\u0008}\u0010~J\u0019\u0010\u0081\u0001\u001a\u00020\u00152\u0007\u0010\u0080\u0001\u001a\u00020\u0003\u00a2\u0006\u0006\u0008\u0081\u0001\u0010\u0082\u0001J\u001b\u0010\u0084\u0001\u001a\u00020\u00152\u0007\u0010\u0018\u001a\u00030\u0083\u0001H\u0002\u00a2\u0006\u0006\u0008\u0084\u0001\u0010\u0085\u0001J\u001e\u0010\u0086\u0001\u001a\u00020\u00152\n\u0010\u0018\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0002\u00a2\u0006\u0006\u0008\u0086\u0001\u0010\u0087\u0001JI\u0010\u008c\u0001\u001a\u00020\u0015\"\u0005\u0008\u0000\u0010\u0088\u00012\u000e\u0010\u008a\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u0089\u00012\u001d\u0010g\u001a\u0019\u0008\u0001\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00000\u008b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\t0Z\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u008c\u0001\u0010\u008d\u0001JX\u0010\u0091\u0001\u001a\u00020\u0015\"\u0004\u0008\u0000\u0010y\"\u0005\u0008\u0001\u0010\u0088\u00012\u000e\u0010\u008a\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u0089\u00012$\u0010g\u001a \u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00010\u008b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\t0\u008e\u0001H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u008f\u0001\u0010\u0090\u0001J\u001e\u0010\u0093\u0001\u001a\u00020\u00152\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0000\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0087\u0001JX\u0010\u0095\u0001\u001a\u00020\u0015\"\u0004\u0008\u0000\u0010y\"\u0005\u0008\u0001\u0010\u0088\u00012\u000e\u0010\u008a\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u0089\u00012$\u0010g\u001a \u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00010\u008b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\t0\u008e\u0001H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0094\u0001\u0010\u0090\u0001J\u000f\u0010\u0096\u0001\u001a\u00020\u0005\u00a2\u0006\u0005\u0008\u0096\u0001\u0010eJ\u001c\u0010\u0097\u0001\u001a\u00020\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0006\u0008\u0097\u0001\u0010\u0098\u0001J\u001c\u0010\u0099\u0001\u001a\u00020s2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0006\u0008\u0099\u0001\u0010\u009a\u0001J\u0011\u0010\u009b\u0001\u001a\u00020sH\u0007\u00a2\u0006\u0005\u0008\u009b\u0001\u0010uJ\u0011\u0010\u009c\u0001\u001a\u00020sH\u0016\u00a2\u0006\u0005\u0008\u009c\u0001\u0010uJ,\u0010\u009d\u0001\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u0002062\u0008\u00109\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0006\u0008\u009d\u0001\u0010\u009e\u0001J,\u0010\u009f\u0001\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u0002022\u0008\u00103\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0006\u0008\u009f\u0001\u0010\u00a0\u0001J\"\u0010\u00a1\u0001\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u0002022\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001J.\u0010\u00a3\u0001\u001a\u00020\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\t2\u0008\u00109\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001J-\u0010\u00a5\u0001\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u0002062\u0006\u0010\u001d\u001a\u0002072\u0008\u00109\u001a\u0004\u0018\u00010\tH\u0082\u0010\u00a2\u0006\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001J\u0019\u0010\u00a8\u0001\u001a\u0004\u0018\u000107*\u00030\u00a7\u0001H\u0002\u00a2\u0006\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001J\u001f\u0010\u00aa\u0001\u001a\u00020\u0015*\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0005\u0008\u00aa\u0001\u0010xJ\'\u0010\u00ac\u0001\u001a\u00060(j\u0002`)*\u00020\u00112\u000b\u0008\u0002\u0010\u00ab\u0001\u001a\u0004\u0018\u00010sH\u0004\u00a2\u0006\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001R\u0018\u0010\u00af\u0001\u001a\u00020\u00058T@\u0014X\u0094\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00ae\u0001\u0010eR\u001d\u0010\u00b3\u0001\u001a\t\u0012\u0004\u0012\u00020\u00010\u00b0\u00018F@\u0006\u00a2\u0006\u0008\u001a\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R\u001a\u0010\u00b5\u0001\u001a\u0004\u0018\u00010\u00118D@\u0004X\u0084\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b4\u0001\u0010FR\u0018\u0010\u00b7\u0001\u001a\u00020\u00058D@\u0004X\u0084\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b6\u0001\u0010eR\u0018\u0010\u00b9\u0001\u001a\u00020\u00058T@\u0014X\u0094\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b8\u0001\u0010eR\u0018\u0010\u00ba\u0001\u001a\u00020\u00058V@\u0016X\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00ba\u0001\u0010eR\u0015\u0010\u00bb\u0001\u001a\u00020\u00058F@\u0006\u00a2\u0006\u0007\u001a\u0005\u0008\u00bb\u0001\u0010eR\u0015\u0010\u00bc\u0001\u001a\u00020\u00058F@\u0006\u00a2\u0006\u0007\u001a\u0005\u0008\u00bc\u0001\u0010eR\u0015\u0010\u00bd\u0001\u001a\u00020\u00058F@\u0006\u00a2\u0006\u0007\u001a\u0005\u0008\u00bd\u0001\u0010eR\u001b\u0010\u00c1\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u00be\u00018F@\u0006\u00a2\u0006\u0008\u001a\u0006\u0008\u00bf\u0001\u0010\u00c0\u0001R\u0018\u0010\u00c3\u0001\u001a\u00020\u00058P@\u0010X\u0090\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00c2\u0001\u0010eR\u0016\u0010\u00c6\u0001\u001a\u00020\u00048F@\u0006\u00a2\u0006\u0008\u001a\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001R\u001b\u0010\u00c7\u0001\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\t8@@\u0000X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00c9\u0001\u0010HR \u0010\u00cb\u0001\u001a\u0004\u0018\u00010\u0011*\u0004\u0018\u00010\t8B@\u0002X\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00ca\u0001\u0010=R\u001d\u0010\u00cc\u0001\u001a\u00020\u0005*\u0002028B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00cc\u0001\u0010\u00cd\u0001\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u00d1\u0001"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport;",
        "Lkotlinx/coroutines/Job;",
        "Lkotlinx/coroutines/ChildJob;",
        "Lkotlinx/coroutines/ParentJob;",
        "Lkotlinx/coroutines/selects/SelectClause0;",
        "",
        "active",
        "<init>",
        "(Z)V",
        "",
        "expect",
        "Lkotlinx/coroutines/NodeList;",
        "list",
        "Lkotlinx/coroutines/JobNode;",
        "node",
        "addLastAtomic",
        "(Ljava/lang/Object;Lkotlinx/coroutines/NodeList;Lkotlinx/coroutines/JobNode;)Z",
        "",
        "rootCause",
        "",
        "exceptions",
        "",
        "addSuppressedExceptions",
        "(Ljava/lang/Throwable;Ljava/util/List;)V",
        "state",
        "",
        "mode",
        "afterCompletionInternal",
        "(Ljava/lang/Object;I)V",
        "child",
        "Lkotlinx/coroutines/ChildHandle;",
        "attachChild",
        "(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;",
        "awaitInternal$kotlinx_coroutines_core",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitInternal",
        "awaitSuspend",
        "cause",
        "cancel",
        "(Ljava/lang/Throwable;)Z",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "(Ljava/util/concurrent/CancellationException;)V",
        "cancelCoroutine",
        "cancelImpl",
        "(Ljava/lang/Object;)Z",
        "cancelInternal",
        "cancelMakeCompleting",
        "cancelParent",
        "childCancelled",
        "Lkotlinx/coroutines/Incomplete;",
        "update",
        "completeStateFinalization",
        "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;I)V",
        "Lkotlinx/coroutines/JobSupport$Finishing;",
        "Lkotlinx/coroutines/ChildHandleNode;",
        "lastChild",
        "proposedUpdate",
        "continueCompleting",
        "(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V",
        "createCauseException",
        "(Ljava/lang/Object;)Ljava/lang/Throwable;",
        "Lkotlinx/coroutines/JobCancellationException;",
        "createJobCancellationException",
        "()Lkotlinx/coroutines/JobCancellationException;",
        "firstChild",
        "(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/ChildHandleNode;",
        "getCancellationException",
        "()Ljava/util/concurrent/CancellationException;",
        "getChildJobCancellationCause",
        "()Ljava/lang/Throwable;",
        "getCompletedInternal$kotlinx_coroutines_core",
        "()Ljava/lang/Object;",
        "getCompletedInternal",
        "getCompletionExceptionOrNull",
        "getFinalRootCause",
        "(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/util/List;)Ljava/lang/Throwable;",
        "getOrPromoteCancellingList",
        "(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/NodeList;",
        "exception",
        "handleJobException",
        "handleOnCompletionException$kotlinx_coroutines_core",
        "(Ljava/lang/Throwable;)V",
        "handleOnCompletionException",
        "parent",
        "initParentJobInternal$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/Job;)V",
        "initParentJobInternal",
        "onCancelling",
        "invokeImmediately",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlinx/coroutines/CompletionHandler;",
        "handler",
        "Lkotlinx/coroutines/DisposableHandle;",
        "invokeOnCompletion",
        "(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;",
        "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;",
        "join",
        "joinInternal",
        "()Z",
        "joinSuspend",
        "block",
        "",
        "loopOnState",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;",
        "makeCancelling",
        "makeCompleting$kotlinx_coroutines_core",
        "makeCompleting",
        "makeCompletingOnce$kotlinx_coroutines_core",
        "(Ljava/lang/Object;I)Z",
        "makeCompletingOnce",
        "makeNode",
        "(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/JobNode;",
        "",
        "nameString$kotlinx_coroutines_core",
        "()Ljava/lang/String;",
        "nameString",
        "notifyCancelling",
        "(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V",
        "T",
        "notifyHandlers",
        "onCompletionInternal",
        "(Ljava/lang/Object;)V",
        "onStartInternal$kotlinx_coroutines_core",
        "()V",
        "onStartInternal",
        "parentJob",
        "parentCancelled",
        "(Lkotlinx/coroutines/ParentJob;)V",
        "Lkotlinx/coroutines/Empty;",
        "promoteEmptyToNodeList",
        "(Lkotlinx/coroutines/Empty;)V",
        "promoteSingleToNodeList",
        "(Lkotlinx/coroutines/JobNode;)V",
        "R",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "select",
        "Lkotlin/coroutines/Continuation;",
        "registerSelectClause0",
        "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V",
        "Lkotlin/Function2;",
        "registerSelectClause1Internal$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V",
        "registerSelectClause1Internal",
        "removeNode$kotlinx_coroutines_core",
        "removeNode",
        "selectAwaitCompletion$kotlinx_coroutines_core",
        "selectAwaitCompletion",
        "start",
        "startInternal",
        "(Ljava/lang/Object;)I",
        "stateString",
        "(Ljava/lang/Object;)Ljava/lang/String;",
        "toDebugString",
        "toString",
        "tryFinalizeFinishingState",
        "(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;I)Z",
        "tryFinalizeSimpleState",
        "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;I)Z",
        "tryMakeCancelling",
        "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Throwable;)Z",
        "tryMakeCompleting",
        "(Ljava/lang/Object;Ljava/lang/Object;I)I",
        "tryWaitForChild",
        "(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "nextChild",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;",
        "notifyCompletion",
        "message",
        "toCancellationException",
        "(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;",
        "getCancelsParent",
        "cancelsParent",
        "Lkotlin/sequences/Sequence;",
        "getChildren",
        "()Lkotlin/sequences/Sequence;",
        "children",
        "getCompletionCause",
        "completionCause",
        "getCompletionCauseHandled",
        "completionCauseHandled",
        "getHandlesException",
        "handlesException",
        "isActive",
        "isCancelled",
        "isCompleted",
        "isCompletedExceptionally",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "getKey",
        "()Lkotlin/coroutines/CoroutineContext$Key;",
        "key",
        "getOnCancelComplete$kotlinx_coroutines_core",
        "onCancelComplete",
        "getOnJoin",
        "()Lkotlinx/coroutines/selects/SelectClause0;",
        "onJoin",
        "parentHandle",
        "Lkotlinx/coroutines/ChildHandle;",
        "getState$kotlinx_coroutines_core",
        "getExceptionOrNull",
        "exceptionOrNull",
        "isCancelling",
        "(Lkotlinx/coroutines/Incomplete;)Z",
        "AwaitContinuation",
        "ChildCompletion",
        "Finishing",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _state:Ljava/lang/Object;

.field private volatile parentHandle:Lkotlinx/coroutines/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/n1;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/n1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lkotlinx/coroutines/o1;->a()Lkotlinx/coroutines/v0;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/o1;->b()Lkotlinx/coroutines/v0;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/n1;->_state:Ljava/lang/Object;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 8

    .line 88
    instance-of v0, p1, Lkotlinx/coroutines/b1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 89
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/v0;

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_1

    instance-of v0, p1, Lkotlinx/coroutines/m1;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/n;

    if-nez v0, :cond_3

    instance-of v0, p2, Lkotlinx/coroutines/r;

    if-nez v0, :cond_3

    .line 90
    check-cast p1, Lkotlinx/coroutines/b1;

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/n1;->b(Lkotlinx/coroutines/b1;Ljava/lang/Object;I)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v3

    .line 91
    :cond_3
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/b1;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/n1;->b(Lkotlinx/coroutines/b1;)Lkotlinx/coroutines/s1;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 92
    instance-of v5, p1, Lkotlinx/coroutines/n1$c;

    const/4 v6, 0x0

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_0

    :cond_4
    move-object v5, p1

    :goto_0
    check-cast v5, Lkotlinx/coroutines/n1$c;

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    new-instance v5, Lkotlinx/coroutines/n1$c;

    invoke-direct {v5, v4, v1, v6}, Lkotlinx/coroutines/n1$c;-><init>(Lkotlinx/coroutines/s1;ZLjava/lang/Throwable;)V

    .line 93
    :goto_1
    monitor-enter v5

    .line 94
    :try_start_0
    iget-boolean v7, v5, Lkotlinx/coroutines/n1$c;->isCompleting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_6

    monitor-exit v5

    return v1

    .line 95
    :cond_6
    :try_start_1
    iput-boolean v3, v5, Lkotlinx/coroutines/n1$c;->isCompleting:Z

    if-eq v5, p1, :cond_7

    .line 96
    sget-object v1, Lkotlinx/coroutines/n1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_7

    monitor-exit v5

    return v2

    .line 97
    :cond_7
    :try_start_2
    invoke-virtual {v5}, Lkotlinx/coroutines/n1$c;->c()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_e

    .line 98
    invoke-virtual {v5}, Lkotlinx/coroutines/n1$c;->b()Z

    move-result p1

    .line 99
    instance-of v1, p2, Lkotlinx/coroutines/r;

    if-nez v1, :cond_8

    move-object v1, v6

    goto :goto_2

    :cond_8
    move-object v1, p2

    :goto_2
    check-cast v1, Lkotlinx/coroutines/r;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lkotlinx/coroutines/r;->a:Ljava/lang/Throwable;

    invoke-virtual {v5, v1}, Lkotlinx/coroutines/n1$c;->a(Ljava/lang/Throwable;)V

    .line 100
    :cond_9
    iget-object v1, v5, Lkotlinx/coroutines/n1$c;->rootCause:Ljava/lang/Throwable;

    xor-int/2addr p1, v3

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    move-object v1, v6

    .line 101
    :goto_3
    sget-object p1, Lkotlin/t;->a:Lkotlin/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    if-eqz v1, :cond_b

    .line 102
    invoke-direct {p0, v4, v1}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/s1;Ljava/lang/Throwable;)V

    .line 103
    :cond_b
    invoke-direct {p0, v0}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/b1;)Lkotlinx/coroutines/n;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 104
    invoke-direct {p0, v5, p1, p2}, Lkotlinx/coroutines/n1;->b(Lkotlinx/coroutines/n1$c;Lkotlinx/coroutines/n;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x2

    return p1

    .line 105
    :cond_c
    invoke-direct {p0, v5, p2, p3}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/n1$c;Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v2

    :cond_e
    :try_start_3
    const-string p1, "Failed requirement."

    .line 106
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 107
    monitor-exit v5

    throw p1

    :cond_f
    return v2
.end method

.method private final a(Lkotlinx/coroutines/n1$c;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n1$c;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 33
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p1}, Lkotlinx/coroutines/n1$c;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/n1;->m()Lkotlinx/coroutines/h1;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1

    .line 35
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    .line 36
    instance-of v2, v2, Ljava/util/concurrent/CancellationException;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 37
    :goto_0
    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 38
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    :goto_1
    return-object v0
.end method

.method public static synthetic a(Lkotlinx/coroutines/n1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 67
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/n1;->a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0

    .line 68
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final a(Lkotlin/jvm/c/b;Z)Lkotlinx/coroutines/m1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/c/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/t;",
            ">;Z)",
            "Lkotlinx/coroutines/m1<",
            "*>;"
        }
    .end annotation

    const-string v0, "Failed requirement."

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    .line 71
    instance-of p2, p1, Lkotlinx/coroutines/i1;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    check-cast v3, Lkotlinx/coroutines/i1;

    if-eqz v3, :cond_3

    iget-object p2, v3, Lkotlinx/coroutines/m1;->h:Lkotlinx/coroutines/g1;

    if-ne p2, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_3
    new-instance v3, Lkotlinx/coroutines/e1;

    invoke-direct {v3, p0, p1}, Lkotlinx/coroutines/e1;-><init>(Lkotlinx/coroutines/g1;Lkotlin/jvm/c/b;)V

    goto :goto_4

    .line 73
    :cond_4
    instance-of p2, p1, Lkotlinx/coroutines/m1;

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, p1

    :goto_2
    check-cast v3, Lkotlinx/coroutines/m1;

    if-eqz v3, :cond_8

    iget-object p2, v3, Lkotlinx/coroutines/m1;->h:Lkotlinx/coroutines/g1;

    if-ne p2, p0, :cond_6

    instance-of p2, v3, Lkotlinx/coroutines/i1;

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_8
    new-instance v3, Lkotlinx/coroutines/f1;

    invoke-direct {v3, p0, p1}, Lkotlinx/coroutines/f1;-><init>(Lkotlinx/coroutines/g1;Lkotlin/jvm/c/b;)V

    :goto_4
    return-object v3
.end method

.method private final a(Lkotlinx/coroutines/b1;)Lkotlinx/coroutines/n;
    .locals 2

    .line 108
    instance-of v0, p1, Lkotlinx/coroutines/n;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lkotlinx/coroutines/n;

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/b1;->a()Lkotlinx/coroutines/s1;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/internal/k;)Lkotlinx/coroutines/n;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method private final a(Lkotlinx/coroutines/internal/k;)Lkotlinx/coroutines/n;
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 114
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/k;->e()Lkotlinx/coroutines/internal/k;

    move-result-object p1

    goto :goto_0

    .line 115
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/k;->c()Lkotlinx/coroutines/internal/k;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 117
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/n;

    if-eqz v0, :cond_2

    check-cast p1, Lkotlinx/coroutines/n;

    return-object p1

    .line 118
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/s1;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method private final a(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/e;->a(I)Ljava/util/Set;

    move-result-object v0

    .line 41
    invoke-static {p1}, Lkotlinx/coroutines/internal/s;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 42
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 43
    invoke-static {v2}, Lkotlinx/coroutines/internal/s;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    if-eq v2, p1, :cond_1

    if-eq v2, v1, :cond_1

    .line 44
    instance-of v3, v2, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    invoke-static {p1, v2}, Lkotlin/b;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final a(Lkotlinx/coroutines/b1;Ljava/lang/Object;I)V
    .locals 4

    .line 46
    iget-object v0, p0, Lkotlinx/coroutines/n1;->parentHandle:Lkotlinx/coroutines/m;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Lkotlinx/coroutines/t0;->dispose()V

    .line 48
    sget-object v0, Lkotlinx/coroutines/t1;->e:Lkotlinx/coroutines/t1;

    iput-object v0, p0, Lkotlinx/coroutines/n1;->parentHandle:Lkotlinx/coroutines/m;

    .line 49
    :cond_0
    instance-of v0, p2, Lkotlinx/coroutines/r;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    check-cast v0, Lkotlinx/coroutines/r;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lkotlinx/coroutines/r;->a:Ljava/lang/Throwable;

    .line 50
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/m1;

    if-eqz v0, :cond_3

    .line 51
    :try_start_0
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/m1;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/v;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 52
    new-instance v1, Lkotlinx/coroutines/w;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in completion handler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lkotlinx/coroutines/w;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/n1;->c(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 53
    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/b1;->a()Lkotlinx/coroutines/s1;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/n1;->b(Lkotlinx/coroutines/s1;Ljava/lang/Throwable;)V

    .line 54
    :cond_4
    :goto_1
    invoke-virtual {p0, p2, p3}, Lkotlinx/coroutines/n1;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method private final a(Lkotlinx/coroutines/n1$c;Lkotlinx/coroutines/n;Ljava/lang/Object;)V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->e()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 110
    invoke-direct {p0, p2}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/internal/k;)Lkotlinx/coroutines/n;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/n1;->b(Lkotlinx/coroutines/n1$c;Lkotlinx/coroutines/n;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 112
    :cond_1
    invoke-direct {p0, p1, p3, v1}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/n1$c;Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_2
    return-void

    .line 113
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lkotlinx/coroutines/n1;Lkotlinx/coroutines/n1$c;Lkotlinx/coroutines/n;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/n1$c;Lkotlinx/coroutines/n;Ljava/lang/Object;)V

    return-void
.end method

.method private final a(Lkotlinx/coroutines/s1;Ljava/lang/Throwable;)V
    .locals 6

    .line 55
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/n1;->d(Ljava/lang/Throwable;)V

    .line 56
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/k;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lkotlinx/coroutines/internal/k;

    const/4 v1, 0x0

    .line 57
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/d/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 58
    instance-of v2, v0, Lkotlinx/coroutines/i1;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/m1;

    .line 59
    :try_start_0
    invoke-virtual {v2, p2}, Lkotlinx/coroutines/v;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    .line 60
    invoke-static {v1, v3}, Lkotlin/b;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    new-instance v1, Lkotlinx/coroutines/w;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/w;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    sget-object v2, Lkotlin/t;->a:Lkotlin/t;

    .line 63
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/k;->c()Lkotlinx/coroutines/internal/k;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 64
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/n1;->c(Ljava/lang/Throwable;)V

    .line 65
    :cond_3
    invoke-direct {p0, p2}, Lkotlinx/coroutines/n1;->e(Ljava/lang/Throwable;)Z

    return-void

    .line 66
    :cond_4
    new-instance p1, Lkotlin/r;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, p2}, Lkotlin/r;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private final a(Lkotlinx/coroutines/v0;)V
    .locals 2

    .line 75
    new-instance v0, Lkotlinx/coroutines/s1;

    invoke-direct {v0}, Lkotlinx/coroutines/s1;-><init>()V

    .line 76
    invoke-virtual {p1}, Lkotlinx/coroutines/v0;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/a1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/a1;-><init>(Lkotlinx/coroutines/s1;)V

    move-object v0, v1

    .line 77
    :goto_0
    sget-object v1, Lkotlinx/coroutines/n1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final a(Ljava/lang/Object;Lkotlinx/coroutines/s1;Lkotlinx/coroutines/m1;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/s1;",
            "Lkotlinx/coroutines/m1<",
            "*>;)Z"
        }
    .end annotation

    .line 144
    new-instance v0, Lkotlinx/coroutines/n1$d;

    invoke-direct {v0, p3, p3, p0, p1}, Lkotlinx/coroutines/n1$d;-><init>(Lkotlinx/coroutines/internal/k;Lkotlinx/coroutines/internal/k;Lkotlinx/coroutines/n1;Ljava/lang/Object;)V

    .line 145
    :goto_0
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/k;->d()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lkotlinx/coroutines/internal/k;

    .line 146
    invoke-virtual {p1, p3, p2, v0}, Lkotlinx/coroutines/internal/k;->a(Lkotlinx/coroutines/internal/k;Lkotlinx/coroutines/internal/k;Lkotlinx/coroutines/internal/k$a;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1

    .line 147
    :cond_2
    new-instance p1, Lkotlin/r;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, p2}, Lkotlin/r;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final a(Lkotlinx/coroutines/b1;Ljava/lang/Throwable;)Z
    .locals 5

    .line 80
    instance-of v0, p1, Lkotlinx/coroutines/n1$c;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Check failed."

    if-eqz v0, :cond_3

    .line 81
    invoke-interface {p1}, Lkotlinx/coroutines/b1;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-direct {p0, p1}, Lkotlinx/coroutines/n1;->b(Lkotlinx/coroutines/b1;)Lkotlinx/coroutines/s1;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 83
    new-instance v3, Lkotlinx/coroutines/n1$c;

    invoke-direct {v3, v0, v2, p2}, Lkotlinx/coroutines/n1$c;-><init>(Lkotlinx/coroutines/s1;ZLjava/lang/Throwable;)V

    .line 84
    sget-object v4, Lkotlinx/coroutines/n1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    .line 85
    :cond_0
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/s1;Ljava/lang/Throwable;)V

    return v1

    :cond_1
    return v2

    .line 86
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Lkotlinx/coroutines/n1$c;Ljava/lang/Object;I)Z
    .locals 7

    .line 11
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->e()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {p1}, Lkotlinx/coroutines/n1$c;->c()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_d

    .line 13
    iget-boolean v0, p1, Lkotlinx/coroutines/n1$c;->isCompleting:Z

    if-eqz v0, :cond_c

    .line 14
    instance-of v0, p2, Lkotlinx/coroutines/r;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    check-cast v0, Lkotlinx/coroutines/r;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lkotlinx/coroutines/r;->a:Ljava/lang/Throwable;

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 15
    :goto_2
    monitor-enter p1

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lkotlinx/coroutines/n1$c;->b()Z

    move-result v4

    .line 17
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/n1$c;->b(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v5

    .line 18
    invoke-direct {p0, p1, v5}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/n1$c;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 19
    invoke-direct {p0, v6, v5}, Lkotlinx/coroutines/n1;->a(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_3
    monitor-exit p1

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    if-ne v6, v0, :cond_5

    goto :goto_3

    .line 21
    :cond_5
    new-instance p2, Lkotlinx/coroutines/r;

    const/4 v0, 0x2

    invoke-direct {p2, v6, v1, v0, v3}, Lkotlinx/coroutines/r;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/d/e;)V

    :goto_3
    if-eqz v6, :cond_9

    .line 22
    invoke-direct {p0, v6}, Lkotlinx/coroutines/n1;->e(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v6}, Lkotlinx/coroutines/n1;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    if-eqz v1, :cond_9

    if-eqz p2, :cond_8

    .line 23
    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/r;

    invoke-virtual {v0}, Lkotlinx/coroutines/r;->b()Z

    goto :goto_4

    :cond_8
    new-instance p1, Lkotlin/r;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-direct {p1, p2}, Lkotlin/r;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_4
    if-nez v4, :cond_a

    .line 24
    invoke-virtual {p0, v6}, Lkotlinx/coroutines/n1;->d(Ljava/lang/Throwable;)V

    .line 25
    :cond_a
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/n1;->a(Ljava/lang/Object;)V

    .line 26
    sget-object v0, Lkotlinx/coroutines/n1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lkotlinx/coroutines/o1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/b1;Ljava/lang/Object;I)V

    return v2

    .line 28
    :cond_b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lkotlinx/coroutines/n1;->_state:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", expected: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", update: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p2

    .line 29
    monitor-exit p1

    throw p2

    .line 30
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final b(Lkotlinx/coroutines/b1;)Lkotlinx/coroutines/s1;
    .locals 2

    .line 16
    invoke-interface {p1}, Lkotlinx/coroutines/b1;->a()Lkotlinx/coroutines/s1;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/v0;

    if-eqz v0, :cond_1

    new-instance v0, Lkotlinx/coroutines/s1;

    invoke-direct {v0}, Lkotlinx/coroutines/s1;-><init>()V

    goto :goto_0

    .line 18
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/m1;

    if-eqz v0, :cond_2

    .line 19
    check-cast p1, Lkotlinx/coroutines/m1;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/n1;->b(Lkotlinx/coroutines/m1;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State should have list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final b(Lkotlinx/coroutines/m1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/m1<",
            "*>;)V"
        }
    .end annotation

    .line 10
    new-instance v0, Lkotlinx/coroutines/s1;

    invoke-direct {v0}, Lkotlinx/coroutines/s1;-><init>()V

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/k;->a(Lkotlinx/coroutines/internal/k;)Z

    .line 11
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/k;->c()Lkotlinx/coroutines/internal/k;

    move-result-object v0

    .line 12
    sget-object v1, Lkotlinx/coroutines/n1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final b(Lkotlinx/coroutines/s1;Ljava/lang/Throwable;)V
    .locals 6
    .param p1    # Lkotlinx/coroutines/s1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 38
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/k;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lkotlinx/coroutines/internal/k;

    const/4 v1, 0x0

    .line 39
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/d/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 40
    instance-of v2, v0, Lkotlinx/coroutines/m1;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/m1;

    .line 41
    :try_start_0
    invoke-virtual {v2, p2}, Lkotlinx/coroutines/v;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    .line 42
    invoke-static {v1, v3}, Lkotlin/b;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_0

    goto :goto_1

    .line 43
    :cond_0
    new-instance v1, Lkotlinx/coroutines/w;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/w;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    sget-object v2, Lkotlin/t;->a:Lkotlin/t;

    .line 45
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/k;->c()Lkotlinx/coroutines/internal/k;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 46
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/n1;->c(Ljava/lang/Throwable;)V

    :cond_3
    return-void

    .line 47
    :cond_4
    new-instance p1, Lkotlin/r;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, p2}, Lkotlin/r;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private final b(Ljava/lang/Object;)Z
    .locals 1

    .line 13
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-direct {p0, p1}, Lkotlinx/coroutines/n1;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/n1;->f(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final b(Lkotlinx/coroutines/b1;Ljava/lang/Object;I)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/v0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    instance-of v0, p1, Lkotlinx/coroutines/m1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v3, "Check failed."

    if-eqz v0, :cond_4

    .line 2
    instance-of v0, p2, Lkotlinx/coroutines/r;

    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 3
    sget-object v0, Lkotlinx/coroutines/n1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lkotlinx/coroutines/o1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/n1;->d(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/n1;->a(Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/b1;Ljava/lang/Object;I)V

    return v2

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final b(Lkotlinx/coroutines/n1$c;Lkotlinx/coroutines/n;Ljava/lang/Object;)Z
    .locals 6

    .line 21
    :goto_0
    iget-object v0, p2, Lkotlinx/coroutines/n;->i:Lkotlinx/coroutines/o;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 22
    new-instance v3, Lkotlinx/coroutines/n1$b;

    invoke-direct {v3, p0, p1, p2, p3}, Lkotlinx/coroutines/n1$b;-><init>(Lkotlinx/coroutines/n1;Lkotlinx/coroutines/n1$c;Lkotlinx/coroutines/n;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 23
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/g1$a;->a(Lkotlinx/coroutines/g1;ZZLkotlin/jvm/c/b;ILjava/lang/Object;)Lkotlinx/coroutines/t0;

    move-result-object v0

    .line 24
    sget-object v1, Lkotlinx/coroutines/t1;->e:Lkotlinx/coroutines/t1;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 25
    :cond_0
    invoke-direct {p0, p2}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/internal/k;)Lkotlinx/coroutines/n;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final c(Ljava/lang/Object;)Z
    .locals 6

    .line 6
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lkotlinx/coroutines/b1;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    instance-of v1, v0, Lkotlinx/coroutines/n1$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/n1$c;

    iget-boolean v1, v1, Lkotlinx/coroutines/n1$c;->isCompleting:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-instance v1, Lkotlinx/coroutines/r;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/n1;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v1, v3, v2, v5, v4}, Lkotlinx/coroutines/r;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/d/e;)V

    .line 9
    invoke-direct {p0, v0, v1, v2}, Lkotlinx/coroutines/n1;->a(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    if-eq v0, v5, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected result"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method private final d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/n1;->m()Lkotlinx/coroutines/h1;

    move-result-object p1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 2
    check-cast p1, Lkotlinx/coroutines/v1;

    invoke-interface {p1}, Lkotlinx/coroutines/v1;->k()Ljava/lang/Throwable;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_3
    new-instance p1, Lkotlin/r;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-direct {p1, v0}, Lkotlin/r;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/r;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lkotlinx/coroutines/r;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lkotlinx/coroutines/r;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method private final e(Ljava/lang/Throwable;)Z
    .locals 3

    .line 2
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->b()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 4
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/n1;->parentHandle:Lkotlinx/coroutines/m;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlinx/coroutines/m;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final f(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->e()Ljava/lang/Object;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lkotlinx/coroutines/n1$c;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    .line 4
    monitor-enter v2

    .line 5
    :try_start_0
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/n1$c;

    invoke-virtual {v3}, Lkotlinx/coroutines/n1$c;->c()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit v2

    return v4

    .line 6
    :cond_1
    :try_start_1
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/n1$c;

    invoke-virtual {v3}, Lkotlinx/coroutines/n1$c;->b()Z

    move-result v3

    if-nez p1, :cond_2

    if-nez v3, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/n1;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 8
    :goto_1
    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/n1$c;

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/n1$c;->a(Ljava/lang/Throwable;)V

    .line 9
    :cond_4
    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/n1$c;

    iget-object p1, p1, Lkotlinx/coroutines/n1$c;->rootCause:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, v0

    :goto_2
    monitor-exit v2

    if-eqz p1, :cond_6

    .line 10
    check-cast v2, Lkotlinx/coroutines/n1$c;

    invoke-virtual {v2}, Lkotlinx/coroutines/n1$c;->a()Lkotlinx/coroutines/s1;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/s1;Ljava/lang/Throwable;)V

    :cond_6
    return v5

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v2

    throw p1

    .line 12
    :cond_7
    instance-of v3, v2, Lkotlinx/coroutines/b1;

    if-eqz v3, :cond_d

    if-eqz v1, :cond_8

    goto :goto_3

    .line 13
    :cond_8
    invoke-direct {p0, p1}, Lkotlinx/coroutines/n1;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 14
    :goto_3
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/b1;

    invoke-interface {v3}, Lkotlinx/coroutines/b1;->i()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 15
    invoke-direct {p0, v3, v1}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/b1;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v5

    .line 16
    :cond_9
    new-instance v3, Lkotlinx/coroutines/r;

    const/4 v6, 0x2

    invoke-direct {v3, v1, v4, v6, v0}, Lkotlinx/coroutines/r;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/d/e;)V

    invoke-direct {p0, v2, v3, v4}, Lkotlinx/coroutines/n1;->a(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v3

    if-eqz v3, :cond_c

    if-eq v3, v5, :cond_b

    if-eq v3, v6, :cond_b

    const/4 v2, 0x3

    if-ne v3, v2, :cond_a

    goto :goto_0

    .line 17
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected result"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return v5

    .line 18
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot happen in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return v4
.end method

.method private final g(Ljava/lang/Object;)I
    .locals 4

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/v0;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/v0;

    invoke-virtual {v0}, Lkotlinx/coroutines/v0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 3
    :cond_0
    sget-object v0, Lkotlinx/coroutines/n1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/o1;->a()Lkotlinx/coroutines/v0;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->h()V

    return v2

    .line 5
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/a1;

    if-eqz v0, :cond_4

    .line 6
    sget-object v0, Lkotlinx/coroutines/n1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/a1;

    invoke-virtual {v3}, Lkotlinx/coroutines/a1;->a()Lkotlinx/coroutines/s1;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->h()V

    return v2

    :cond_4
    return v3
.end method

.method private final h(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/n1$c;

    const-string v1, "Active"

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lkotlinx/coroutines/n1$c;

    invoke-virtual {p1}, Lkotlinx/coroutines/n1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Cancelling"

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean p1, p1, Lkotlinx/coroutines/n1$c;->isCompleting:Z

    if-eqz p1, :cond_5

    const-string v1, "Completing"

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/b1;

    if-eqz v0, :cond_3

    check-cast p1, Lkotlinx/coroutines/b1;

    invoke-interface {p1}, Lkotlinx/coroutines/b1;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "New"

    goto :goto_0

    .line 5
    :cond_3
    instance-of p1, p1, Lkotlinx/coroutines/r;

    if-eqz p1, :cond_4

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v1, "Completed"

    :cond_5
    :goto_0
    return-object v1
.end method

.method private final m()Lkotlinx/coroutines/h1;
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/coroutines/h1;

    const-string v1, "Job was cancelled"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/h1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/g1;)V

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$toCancellationException"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    goto :goto_2

    .line 70
    :cond_1
    new-instance v0, Lkotlinx/coroutines/h1;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lkotlinx/coroutines/j0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-direct {v0, p2, p1, p0}, Lkotlinx/coroutines/h1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/g1;)V

    :goto_2
    return-object v0
.end method

.method public final a(Lkotlinx/coroutines/o;)Lkotlinx/coroutines/m;
    .locals 7
    .param p1    # Lkotlinx/coroutines/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance v4, Lkotlinx/coroutines/n;

    invoke-direct {v4, p0, p1}, Lkotlinx/coroutines/n;-><init>(Lkotlinx/coroutines/n1;Lkotlinx/coroutines/o;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/g1$a;->a(Lkotlinx/coroutines/g1;ZZLkotlin/jvm/c/b;ILjava/lang/Object;)Lkotlinx/coroutines/t0;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lkotlinx/coroutines/m;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/r;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-direct {p1, v0}, Lkotlin/r;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ZZLkotlin/jvm/c/b;)Lkotlinx/coroutines/t0;
    .locals 7
    .param p3    # Lkotlin/jvm/c/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/c/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/t;",
            ">;)",
            "Lkotlinx/coroutines/t0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v1, v0

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->e()Ljava/lang/Object;

    move-result-object v2

    .line 121
    instance-of v3, v2, Lkotlinx/coroutines/v0;

    if-eqz v3, :cond_3

    .line 122
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/v0;

    invoke-virtual {v3}, Lkotlinx/coroutines/v0;->i()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    invoke-direct {p0, p3, p1}, Lkotlinx/coroutines/n1;->a(Lkotlin/jvm/c/b;Z)Lkotlinx/coroutines/m1;

    move-result-object v1

    .line 124
    :goto_1
    sget-object v3, Lkotlinx/coroutines/n1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 125
    :cond_2
    invoke-direct {p0, v3}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/v0;)V

    goto :goto_0

    .line 126
    :cond_3
    instance-of v3, v2, Lkotlinx/coroutines/b1;

    if-eqz v3, :cond_f

    .line 127
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/b1;

    invoke-interface {v3}, Lkotlinx/coroutines/b1;->a()Lkotlinx/coroutines/s1;

    move-result-object v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_4

    .line 128
    check-cast v2, Lkotlinx/coroutines/m1;

    invoke-direct {p0, v2}, Lkotlinx/coroutines/n1;->b(Lkotlinx/coroutines/m1;)V

    goto :goto_0

    :cond_4
    new-instance p1, Lkotlin/r;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode<*>"

    invoke-direct {p1, p2}, Lkotlin/r;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_5
    sget-object v4, Lkotlinx/coroutines/t1;->e:Lkotlinx/coroutines/t1;

    if-eqz p1, :cond_b

    .line 130
    instance-of v5, v2, Lkotlinx/coroutines/n1$c;

    if-eqz v5, :cond_b

    .line 131
    monitor-enter v2

    .line 132
    :try_start_0
    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/n1$c;

    iget-object v5, v5, Lkotlinx/coroutines/n1$c;->rootCause:Ljava/lang/Throwable;

    if-eqz v5, :cond_6

    .line 133
    instance-of v6, p3, Lkotlinx/coroutines/n;

    if-eqz v6, :cond_a

    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/n1$c;

    iget-boolean v6, v6, Lkotlinx/coroutines/n1$c;->isCompleting:Z

    if-nez v6, :cond_a

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_2

    .line 134
    :cond_7
    invoke-direct {p0, p3, p1}, Lkotlinx/coroutines/n1;->a(Lkotlin/jvm/c/b;Z)Lkotlinx/coroutines/m1;

    move-result-object v1

    .line 135
    :goto_2
    invoke-direct {p0, v2, v3, v1}, Lkotlinx/coroutines/n1;->a(Ljava/lang/Object;Lkotlinx/coroutines/s1;Lkotlinx/coroutines/m1;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_8

    monitor-exit v2

    goto :goto_0

    :cond_8
    if-nez v5, :cond_9

    .line 136
    monitor-exit v2

    return-object v1

    :cond_9
    move-object v4, v1

    .line 137
    :cond_a
    :try_start_1
    sget-object v6, Lkotlin/t;->a:Lkotlin/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_b
    move-object v5, v0

    :goto_3
    if-eqz v5, :cond_d

    if-eqz p2, :cond_c

    .line 138
    invoke-interface {p3, v5}, Lkotlin/jvm/c/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object v4

    :cond_d
    if-eqz v1, :cond_e

    goto :goto_4

    .line 139
    :cond_e
    invoke-direct {p0, p3, p1}, Lkotlinx/coroutines/n1;->a(Lkotlin/jvm/c/b;Z)Lkotlinx/coroutines/m1;

    move-result-object v1

    .line 140
    :goto_4
    invoke-direct {p0, v2, v3, v1}, Lkotlinx/coroutines/n1;->a(Ljava/lang/Object;Lkotlinx/coroutines/s1;Lkotlinx/coroutines/m1;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_f
    if-eqz p2, :cond_12

    .line 141
    instance-of p1, v2, Lkotlinx/coroutines/r;

    if-nez p1, :cond_10

    move-object v2, v0

    :cond_10
    check-cast v2, Lkotlinx/coroutines/r;

    if-eqz v2, :cond_11

    iget-object v0, v2, Lkotlinx/coroutines/r;->a:Ljava/lang/Throwable;

    .line 142
    :cond_11
    invoke-interface {p3, v0}, Lkotlin/jvm/c/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_12
    sget-object p1, Lkotlinx/coroutines/t1;->e:Lkotlinx/coroutines/t1;

    return-object p1
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method protected a(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final a(Lkotlinx/coroutines/g1;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/g1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/n1;->parentHandle:Lkotlinx/coroutines/m;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lkotlinx/coroutines/t1;->e:Lkotlinx/coroutines/t1;

    iput-object p1, p0, Lkotlinx/coroutines/n1;->parentHandle:Lkotlinx/coroutines/m;

    return-void

    .line 4
    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/g1;->start()Z

    .line 5
    invoke-interface {p1, p0}, Lkotlinx/coroutines/g1;->a(Lkotlinx/coroutines/o;)Lkotlinx/coroutines/m;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lkotlinx/coroutines/n1;->parentHandle:Lkotlinx/coroutines/m;

    .line 7
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {p1}, Lkotlinx/coroutines/t0;->dispose()V

    .line 9
    sget-object p1, Lkotlinx/coroutines/t1;->e:Lkotlinx/coroutines/t1;

    iput-object p1, p0, Lkotlinx/coroutines/n1;->parentHandle:Lkotlinx/coroutines/m;

    :cond_2
    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lkotlinx/coroutines/m1;)V
    .locals 3
    .param p1    # Lkotlinx/coroutines/m1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/m1<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 149
    instance-of v1, v0, Lkotlinx/coroutines/m1;

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_1

    return-void

    .line 150
    :cond_1
    sget-object v1, Lkotlinx/coroutines/n1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/o1;->a()Lkotlinx/coroutines/v0;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/b1;

    if-eqz v1, :cond_3

    .line 152
    check-cast v0, Lkotlinx/coroutines/b1;

    invoke-interface {v0}, Lkotlinx/coroutines/b1;->a()Lkotlinx/coroutines/s1;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/k;->h()Z

    :cond_3
    return-void
.end method

.method public final a(Lkotlinx/coroutines/v1;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/v1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parentJob"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1}, Lkotlinx/coroutines/n1;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1}, Lkotlinx/coroutines/n1;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/coroutines/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 26
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 27
    instance-of v1, v0, Lkotlinx/coroutines/b1;

    if-nez v1, :cond_4

    .line 28
    instance-of v1, v0, Lkotlinx/coroutines/r;

    if-eqz v1, :cond_3

    .line 29
    check-cast v0, Lkotlinx/coroutines/r;

    iget-object v0, v0, Lkotlinx/coroutines/r;->a:Ljava/lang/Throwable;

    .line 30
    invoke-static {v0}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 31
    invoke-static {v1}, Lkotlin/jvm/d/g;->a(I)V

    .line 32
    instance-of v1, p1, Lkotlin/coroutines/jvm/internal/e;

    if-nez v1, :cond_1

    throw v0

    .line 33
    :cond_1
    check-cast p1, Lkotlin/coroutines/jvm/internal/e;

    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/e;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 34
    :cond_2
    throw v0

    .line 35
    :cond_3
    invoke-static {v0}, Lkotlinx/coroutines/o1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 36
    :cond_4
    invoke-direct {p0, v0}, Lkotlinx/coroutines/n1;->g(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/n1;->c(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lkotlin/jvm/c/b;)Lkotlinx/coroutines/t0;
    .locals 2
    .param p1    # Lkotlin/jvm/c/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/c/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/t;",
            ">;)",
            "Lkotlinx/coroutines/t0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, v0, v1, p1}, Lkotlinx/coroutines/n1;->a(ZZLkotlin/jvm/c/b;)Lkotlinx/coroutines/t0;

    move-result-object p1

    return-object p1
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/Object;I)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 48
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 49
    invoke-direct {p0, v0, p1, p2}, Lkotlinx/coroutines/n1;->a(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected result"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v1

    .line 51
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already complete or completing, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "but is being completed with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/n1;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    .line 53
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method protected b(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method final synthetic c(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/coroutines/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    new-instance v0, Lkotlinx/coroutines/n1$a;

    invoke-static {p1}, Lkotlin/coroutines/h/b;->a(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/n1$a;-><init>(Lkotlin/coroutines/c;Lkotlinx/coroutines/n1;)V

    .line 3
    new-instance v1, Lkotlinx/coroutines/w1;

    invoke-direct {v1, p0, v0}, Lkotlinx/coroutines/w1;-><init>(Lkotlinx/coroutines/n1;Lkotlinx/coroutines/i;)V

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/n1;->b(Lkotlin/jvm/c/b;)Lkotlinx/coroutines/t0;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/coroutines/j;->a(Lkotlinx/coroutines/h;Lkotlinx/coroutines/t0;)V

    .line 4
    invoke-virtual {v0}, Lkotlinx/coroutines/i;->d()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {}, Lkotlin/coroutines/h/b;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/g;->c(Lkotlin/coroutines/c;)V

    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    throw p1
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected d(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 5
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/n1;->_state:Ljava/lang/Object;

    .line 6
    instance-of v1, v0, Lkotlinx/coroutines/internal/q;

    if-nez v1, :cond_0

    return-object v0

    .line 7
    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/q;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->e()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/b1;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/c/c;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/jvm/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/c/c<",
            "-TR;-",
            "Lkotlin/coroutines/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/g1$a;->a(Lkotlinx/coroutines/g1;Ljava/lang/Object;Lkotlin/jvm/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 8
    invoke-static {p0}, Lkotlinx/coroutines/j0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;
    .locals 1
    .param p1    # Lkotlin/coroutines/f$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/f$b;",
            ">(",
            "Lkotlin/coroutines/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/g1$a;->a(Lkotlinx/coroutines/g1;Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lkotlin/coroutines/f$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/f$c<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/g1;->d:Lkotlinx/coroutines/g1$b;

    return-object v0
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/b1;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/b1;

    invoke-interface {v0}, Lkotlinx/coroutines/b1;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()Ljava/util/concurrent/CancellationException;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/n1$c;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/n1$c;

    iget-object v0, v0, Lkotlinx/coroutines/n1$c;->rootCause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/j0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/n1;->a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/b1;

    if-nez v1, :cond_3

    .line 5
    instance-of v1, v0, Lkotlinx/coroutines/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lkotlinx/coroutines/r;

    iget-object v0, v0, Lkotlinx/coroutines/r;->a:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/n1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lkotlinx/coroutines/h1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/j0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/h1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/g1;)V

    :goto_0
    return-object v0

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public k()Ljava/lang/Throwable;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/n1$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/n1$c;

    iget-object v1, v1, Lkotlinx/coroutines/n1$c;->rootCause:Ljava/lang/Throwable;

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/b1;

    if-nez v1, :cond_4

    .line 4
    instance-of v1, v0, Lkotlinx/coroutines/r;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/r;

    iget-object v1, v1, Lkotlinx/coroutines/r;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_3

    .line 6
    :cond_2
    new-instance v2, Lkotlinx/coroutines/h1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent job is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/n1;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lkotlinx/coroutines/h1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/g1;)V

    move-object v1, v2

    :cond_3
    return-object v1

    .line 7
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot be cancelling child in this state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final l()Ljava/lang/String;
    .locals 2
    .annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lkotlinx/coroutines/n1;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public minusKey(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f;
    .locals 1
    .param p1    # Lkotlin/coroutines/f$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/f$c<",
            "*>;)",
            "Lkotlin/coroutines/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/g1$a;->b(Lkotlinx/coroutines/g1;Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lkotlin/coroutines/f;)Lkotlin/coroutines/f;
    .locals 1
    .param p1    # Lkotlin/coroutines/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/g1$a;->a(Lkotlinx/coroutines/g1;Lkotlin/coroutines/f;)Lkotlin/coroutines/f;

    move-result-object p1

    return-object p1
.end method

.method public final start()Z
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lkotlinx/coroutines/n1;->g(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/j0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
