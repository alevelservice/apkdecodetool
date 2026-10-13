.class final Lcom/google/android/gms/internal/ads/ch1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zg1;


# instance fields
.field private final a:[Lcom/google/android/gms/internal/ads/ph1;

.field private final b:Lcom/google/android/gms/internal/ads/pn1;

.field private final c:Lcom/google/android/gms/internal/ads/qn1;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/google/android/gms/internal/ads/eh1;

.field private final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/gms/internal/ads/yg1;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/wh1;

.field private final h:Lcom/google/android/gms/internal/ads/xh1;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Lcom/google/android/gms/internal/ads/vh1;

.field private p:Ljava/lang/Object;

.field private q:Lcom/google/android/gms/internal/ads/bn1;

.field private r:Lcom/google/android/gms/internal/ads/qn1;

.field private s:Lcom/google/android/gms/internal/ads/qh1;

.field private t:Lcom/google/android/gms/internal/ads/gh1;

.field private u:I

.field private v:J


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/ph1;Lcom/google/android/gms/internal/ads/pn1;Lcom/google/android/gms/internal/ads/oh1;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/cp1;->e:Ljava/lang/String;

    const-string v2, "Init ExoPlayerLib/2.4.2 ["

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    array-length v0, p1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/no1;->b(Z)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/no1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [Lcom/google/android/gms/internal/ads/ph1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->a:[Lcom/google/android/gms/internal/ads/ph1;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/no1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/pn1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->b:Lcom/google/android/gms/internal/ads/pn1;

    .line 6
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/ch1;->j:Z

    .line 7
    iput v4, p0, Lcom/google/android/gms/internal/ads/ch1;->k:I

    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/qn1;

    array-length v3, p1

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/on1;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/qn1;-><init>([Lcom/google/android/gms/internal/ads/on1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->c:Lcom/google/android/gms/internal/ads/qn1;

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/vh1;->a:Lcom/google/android/gms/internal/ads/vh1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/wh1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/wh1;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->g:Lcom/google/android/gms/internal/ads/wh1;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/xh1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xh1;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->h:Lcom/google/android/gms/internal/ads/xh1;

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/bn1;->d:Lcom/google/android/gms/internal/ads/bn1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->q:Lcom/google/android/gms/internal/ads/bn1;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->c:Lcom/google/android/gms/internal/ads/qn1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->r:Lcom/google/android/gms/internal/ads/qn1;

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/qh1;->d:Lcom/google/android/gms/internal/ads/qh1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->s:Lcom/google/android/gms/internal/ads/qh1;

    .line 16
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 17
    :goto_1
    new-instance v3, Lcom/google/android/gms/internal/ads/fh1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/fh1;-><init>(Lcom/google/android/gms/internal/ads/ch1;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/ch1;->d:Landroid/os/Handler;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/gh1;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/gh1;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->t:Lcom/google/android/gms/internal/ads/gh1;

    .line 19
    new-instance v9, Lcom/google/android/gms/internal/ads/eh1;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/ch1;->j:Z

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ch1;->d:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/ch1;->t:Lcom/google/android/gms/internal/ads/gh1;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/eh1;-><init>([Lcom/google/android/gms/internal/ads/ph1;Lcom/google/android/gms/internal/ads/pn1;Lcom/google/android/gms/internal/ads/oh1;ZILandroid/os/Handler;Lcom/google/android/gms/internal/ads/gh1;Lcom/google/android/gms/internal/ads/zg1;)V

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/ch1;->e:Lcom/google/android/gms/internal/ads/eh1;

    return-void
.end method

.method private final f()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vh1;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/ch1;->l:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ch1;->t:Lcom/google/android/gms/internal/ads/gh1;

    iget v1, v1, Lcom/google/android/gms/internal/ads/gh1;->a:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ch1;->h:Lcom/google/android/gms/internal/ads/xh1;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/vh1;->a(ILcom/google/android/gms/internal/ads/xh1;Z)Lcom/google/android/gms/internal/ads/xh1;

    return v3

    .line 4
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/ch1;->u:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->e:Lcom/google/android/gms/internal/ads/eh1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eh1;->b()V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method final a(Landroid/os/Message;)V
    .locals 3

    .line 24
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 26
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/wg1;

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/yg1;

    .line 28
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/yg1;->a(Lcom/google/android/gms/internal/ads/wg1;)V

    goto :goto_0

    :cond_0
    return-void

    .line 29
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/qh1;

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->s:Lcom/google/android/gms/internal/ads/qh1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/qh1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ch1;->s:Lcom/google/android/gms/internal/ads/qh1;

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/yg1;

    .line 33
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/yg1;->a(Lcom/google/android/gms/internal/ads/qh1;)V

    goto :goto_1

    :cond_1
    return-void

    .line 34
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/ih1;

    .line 35
    iget v0, p0, Lcom/google/android/gms/internal/ads/ch1;->l:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/ih1;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ch1;->l:I

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/ads/ch1;->m:I

    if-nez v0, :cond_5

    .line 37
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ih1;->a:Lcom/google/android/gms/internal/ads/vh1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    .line 38
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ih1;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->p:Ljava/lang/Object;

    .line 39
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ih1;->c:Lcom/google/android/gms/internal/ads/gh1;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ch1;->t:Lcom/google/android/gms/internal/ads/gh1;

    .line 40
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ch1;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yg1;

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ch1;->p:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/yg1;->a(Lcom/google/android/gms/internal/ads/vh1;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    return-void

    .line 42
    :pswitch_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/ch1;->l:I

    if-nez v0, :cond_5

    .line 43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/gh1;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ch1;->t:Lcom/google/android/gms/internal/ads/gh1;

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ch1;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yg1;

    .line 45
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yg1;->a()V

    goto :goto_3

    :cond_3
    return-void

    .line 46
    :pswitch_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/ch1;->l:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ch1;->l:I

    if-nez v0, :cond_5

    .line 47
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/gh1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->t:Lcom/google/android/gms/internal/ads/gh1;

    .line 48
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_5

    .line 49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ch1;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yg1;

    .line 50
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yg1;->a()V

    goto :goto_4

    :cond_4
    return-void

    .line 51
    :pswitch_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/ch1;->m:I

    if-nez v0, :cond_5

    .line 52
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/rn1;

    .line 53
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ch1;->i:Z

    .line 54
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/rn1;->a:Lcom/google/android/gms/internal/ads/bn1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->q:Lcom/google/android/gms/internal/ads/bn1;

    .line 55
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/rn1;->b:Lcom/google/android/gms/internal/ads/qn1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->r:Lcom/google/android/gms/internal/ads/qn1;

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->b:Lcom/google/android/gms/internal/ads/pn1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rn1;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/pn1;->a(Ljava/lang/Object;)V

    .line 57
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ch1;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yg1;

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ch1;->q:Lcom/google/android/gms/internal/ads/bn1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ch1;->r:Lcom/google/android/gms/internal/ads/qn1;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/yg1;->a(Lcom/google/android/gms/internal/ads/bn1;Lcom/google/android/gms/internal/ads/qn1;)V

    goto :goto_5

    :cond_5
    return-void

    .line 59
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ch1;->n:Z

    .line 60
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ch1;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yg1;

    .line 61
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ch1;->n:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/yg1;->a(Z)V

    goto :goto_7

    :cond_7
    return-void

    .line 62
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/ch1;->k:I

    .line 63
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ch1;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yg1;

    .line 64
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ch1;->j:Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/ch1;->k:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/yg1;->a(ZI)V

    goto :goto_8

    :cond_8
    return-void

    .line 65
    :pswitch_8
    iget p1, p0, Lcom/google/android/gms/internal/ads/ch1;->m:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/ch1;->m:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/ads/km1;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vh1;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->p:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/vh1;->a:Lcom/google/android/gms/internal/ads/vh1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    .line 4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ch1;->p:Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/yg1;

    .line 6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ch1;->p:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/yg1;->a(Lcom/google/android/gms/internal/ads/vh1;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ch1;->i:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ch1;->i:Z

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/bn1;->d:Lcom/google/android/gms/internal/ads/bn1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->q:Lcom/google/android/gms/internal/ads/bn1;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->c:Lcom/google/android/gms/internal/ads/qn1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->r:Lcom/google/android/gms/internal/ads/qn1;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->b:Lcom/google/android/gms/internal/ads/pn1;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pn1;->a(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/yg1;

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ch1;->q:Lcom/google/android/gms/internal/ads/bn1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ch1;->r:Lcom/google/android/gms/internal/ads/qn1;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/yg1;->a(Lcom/google/android/gms/internal/ads/bn1;Lcom/google/android/gms/internal/ads/qn1;)V

    goto :goto_1

    .line 14
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/ch1;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ch1;->m:I

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->e:Lcom/google/android/gms/internal/ads/eh1;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/eh1;->a(Lcom/google/android/gms/internal/ads/km1;Z)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/yg1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ch1;->j:Z

    if-eq v0, p1, :cond_0

    .line 17
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ch1;->j:Z

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->e:Lcom/google/android/gms/internal/ads/eh1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/eh1;->a(Z)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/yg1;

    .line 20
    iget v2, p0, Lcom/google/android/gms/internal/ads/ch1;->k:I

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/ads/yg1;->a(ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs a([Lcom/google/android/gms/internal/ads/ah1;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->e:Lcom/google/android/gms/internal/ads/eh1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/eh1;->a([Lcom/google/android/gms/internal/ads/ah1;)V

    return-void
.end method

.method public final b()J
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vh1;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/ch1;->l:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ch1;->t:Lcom/google/android/gms/internal/ads/gh1;

    iget v1, v1, Lcom/google/android/gms/internal/ads/gh1;->a:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ch1;->h:Lcom/google/android/gms/internal/ads/xh1;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/vh1;->a(ILcom/google/android/gms/internal/ads/xh1;Z)Lcom/google/android/gms/internal/ads/xh1;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->h:Lcom/google/android/gms/internal/ads/xh1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xh1;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ch1;->t:Lcom/google/android/gms/internal/ads/gh1;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/gh1;->c:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/xg1;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 7
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ch1;->v:J

    return-wide v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/yg1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs b([Lcom/google/android/gms/internal/ads/ah1;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->e:Lcom/google/android/gms/internal/ads/eh1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/eh1;->b([Lcom/google/android/gms/internal/ads/ah1;)V

    return-void
.end method

.method public final c()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vh1;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/ch1;->l:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ch1;->t:Lcom/google/android/gms/internal/ads/gh1;

    iget v1, v1, Lcom/google/android/gms/internal/ads/gh1;->a:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ch1;->h:Lcom/google/android/gms/internal/ads/xh1;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/vh1;->a(ILcom/google/android/gms/internal/ads/xh1;Z)Lcom/google/android/gms/internal/ads/xh1;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->h:Lcom/google/android/gms/internal/ads/xh1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xh1;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ch1;->t:Lcom/google/android/gms/internal/ads/gh1;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/gh1;->d:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/xg1;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 5
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ch1;->v:J

    return-wide v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ch1;->j:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->a:[Lcom/google/android/gms/internal/ads/ph1;

    array-length v0, v0

    return v0
.end method

.method public final getDuration()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vh1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ch1;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ch1;->g:Lcom/google/android/gms/internal/ads/wh1;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/vh1;->a(ILcom/google/android/gms/internal/ads/wh1;Z)Lcom/google/android/gms/internal/ads/wh1;

    move-result-object v0

    .line 4
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/wh1;->i:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xg1;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPlaybackState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ch1;->k:I

    return v0
.end method

.method public final seekTo(J)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ch1;->f()I

    move-result v0

    if-ltz v0, :cond_5

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vh1;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vh1;->b()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 3
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/ch1;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/ch1;->l:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/ch1;->u:I

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vh1;->a()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ch1;->g:Lcom/google/android/gms/internal/ads/wh1;

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v1, v0, v4, v5}, Lcom/google/android/gms/internal/ads/vh1;->a(ILcom/google/android/gms/internal/ads/wh1;Z)Lcom/google/android/gms/internal/ads/wh1;

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ch1;->g:Lcom/google/android/gms/internal/ads/wh1;

    .line 9
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/wh1;->h:J

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/xg1;->b(J)J

    move-result-wide v6

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ch1;->g:Lcom/google/android/gms/internal/ads/wh1;

    .line 12
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/wh1;->j:J

    add-long/2addr v8, v6

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ch1;->h:Lcom/google/android/gms/internal/ads/xh1;

    .line 14
    invoke-virtual {v1, v5, v4, v5}, Lcom/google/android/gms/internal/ads/vh1;->a(ILcom/google/android/gms/internal/ads/xh1;Z)Lcom/google/android/gms/internal/ads/xh1;

    move-result-object v1

    .line 15
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/xh1;->b:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    cmp-long v1, v8, v4

    :cond_2
    cmp-long v1, p1, v2

    if-nez v1, :cond_3

    const-wide/16 p1, 0x0

    .line 16
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ch1;->v:J

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ch1;->e:Lcom/google/android/gms/internal/ads/eh1;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/eh1;->a(Lcom/google/android/gms/internal/ads/vh1;IJ)V

    return-void

    .line 18
    :cond_3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ch1;->v:J

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ch1;->e:Lcom/google/android/gms/internal/ads/eh1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/xg1;->b(J)J

    move-result-wide p1

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/google/android/gms/internal/ads/eh1;->a(Lcom/google/android/gms/internal/ads/vh1;IJ)V

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ch1;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/yg1;

    .line 21
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/yg1;->a()V

    goto :goto_1

    :cond_4
    return-void

    .line 22
    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/ads/lh1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ch1;->o:Lcom/google/android/gms/internal/ads/vh1;

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/google/android/gms/internal/ads/lh1;-><init>(Lcom/google/android/gms/internal/ads/vh1;IJ)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public final stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch1;->e:Lcom/google/android/gms/internal/ads/eh1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eh1;->c()V

    return-void
.end method
