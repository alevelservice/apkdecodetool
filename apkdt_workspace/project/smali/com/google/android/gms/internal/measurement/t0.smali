.class public final Lcom/google/android/gms/internal/measurement/t0;
.super Lcom/google/android/gms/internal/measurement/b4;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/m5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/t0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/b4<",
        "Lcom/google/android/gms/internal/measurement/t0;",
        "Lcom/google/android/gms/internal/measurement/t0$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/m5;"
    }
.end annotation


# static fields
.field private static volatile zzuo:Lcom/google/android/gms/internal/measurement/s5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/s5<",
            "Lcom/google/android/gms/internal/measurement/t0;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzyz:Lcom/google/android/gms/internal/measurement/t0;


# instance fields
.field private zzyv:Lcom/google/android/gms/internal/measurement/j4;

.field private zzyw:Lcom/google/android/gms/internal/measurement/j4;

.field private zzyx:Lcom/google/android/gms/internal/measurement/i4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/i4<",
            "Lcom/google/android/gms/internal/measurement/m0;",
            ">;"
        }
    .end annotation
.end field

.field private zzyy:Lcom/google/android/gms/internal/measurement/i4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/i4<",
            "Lcom/google/android/gms/internal/measurement/u0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/t0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/t0;->zzyz:Lcom/google/android/gms/internal/measurement/t0;

    .line 2
    const-class v0, Lcom/google/android/gms/internal/measurement/t0;

    sget-object v1, Lcom/google/android/gms/internal/measurement/t0;->zzyz:Lcom/google/android/gms/internal/measurement/t0;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/b4;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/b4;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b4;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b4;->l()Lcom/google/android/gms/internal/measurement/j4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyv:Lcom/google/android/gms/internal/measurement/j4;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b4;->l()Lcom/google/android/gms/internal/measurement/j4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyw:Lcom/google/android/gms/internal/measurement/j4;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b4;->m()Lcom/google/android/gms/internal/measurement/i4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyx:Lcom/google/android/gms/internal/measurement/i4;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b4;->m()Lcom/google/android/gms/internal/measurement/i4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyy:Lcom/google/android/gms/internal/measurement/i4;

    return-void
.end method

.method private final A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyy:Lcom/google/android/gms/internal/measurement/i4;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/i4;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyy:Lcom/google/android/gms/internal/measurement/i4;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b4;->a(Lcom/google/android/gms/internal/measurement/i4;)Lcom/google/android/gms/internal/measurement/i4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyy:Lcom/google/android/gms/internal/measurement/i4;

    :cond_0
    return-void
.end method

.method public static B()Lcom/google/android/gms/internal/measurement/t0$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/t0;->zzyz:Lcom/google/android/gms/internal/measurement/t0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b4;->h()Lcom/google/android/gms/internal/measurement/b4$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t0$a;

    return-object v0
.end method

.method public static C()Lcom/google/android/gms/internal/measurement/t0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/t0;->zzyz:Lcom/google/android/gms/internal/measurement/t0;

    return-object v0
.end method

.method static synthetic D()Lcom/google/android/gms/internal/measurement/t0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/t0;->zzyz:Lcom/google/android/gms/internal/measurement/t0;

    return-object v0
.end method

.method public static a([BLcom/google/android/gms/internal/measurement/o3;)Lcom/google/android/gms/internal/measurement/t0;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/t0;->zzyz:Lcom/google/android/gms/internal/measurement/t0;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/b4;->a(Lcom/google/android/gms/internal/measurement/b4;[BLcom/google/android/gms/internal/measurement/o3;)Lcom/google/android/gms/internal/measurement/b4;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/t0;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/t0;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/t0;->x()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/t0;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/t0;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/t0;Ljava/lang/Iterable;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/t0;->a(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final a(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyv:Lcom/google/android/gms/internal/measurement/j4;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/i4;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyv:Lcom/google/android/gms/internal/measurement/j4;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b4;->a(Lcom/google/android/gms/internal/measurement/j4;)Lcom/google/android/gms/internal/measurement/j4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyv:Lcom/google/android/gms/internal/measurement/j4;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyv:Lcom/google/android/gms/internal/measurement/j4;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/j2;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/t0;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/t0;->y()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/t0;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/t0;->e(I)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/t0;Ljava/lang/Iterable;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/t0;->b(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final b(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyw:Lcom/google/android/gms/internal/measurement/j4;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/i4;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyw:Lcom/google/android/gms/internal/measurement/j4;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b4;->a(Lcom/google/android/gms/internal/measurement/j4;)Lcom/google/android/gms/internal/measurement/j4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyw:Lcom/google/android/gms/internal/measurement/j4;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyw:Lcom/google/android/gms/internal/measurement/j4;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/j2;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/measurement/t0;Ljava/lang/Iterable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/t0;->c(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final c(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/m0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/t0;->z()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyx:Lcom/google/android/gms/internal/measurement/i4;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/j2;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final d(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/t0;->z()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyx:Lcom/google/android/gms/internal/measurement/i4;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/measurement/t0;Ljava/lang/Iterable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/t0;->d(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final d(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/u0;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/t0;->A()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyy:Lcom/google/android/gms/internal/measurement/i4;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/j2;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final e(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/t0;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyy:Lcom/google/android/gms/internal/measurement/i4;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private final x()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b4;->l()Lcom/google/android/gms/internal/measurement/j4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyv:Lcom/google/android/gms/internal/measurement/j4;

    return-void
.end method

.method private final y()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b4;->l()Lcom/google/android/gms/internal/measurement/j4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyw:Lcom/google/android/gms/internal/measurement/j4;

    return-void
.end method

.method private final z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyx:Lcom/google/android/gms/internal/measurement/i4;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/i4;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyx:Lcom/google/android/gms/internal/measurement/i4;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b4;->a(Lcom/google/android/gms/internal/measurement/i4;)Lcom/google/android/gms/internal/measurement/i4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyx:Lcom/google/android/gms/internal/measurement/i4;

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/measurement/k0;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 8
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/t0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

    if-nez p1, :cond_1

    .line 10
    const-class p2, Lcom/google/android/gms/internal/measurement/t0;

    monitor-enter p2

    .line 11
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/t0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

    if-nez p1, :cond_0

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/measurement/b4$c;

    sget-object p3, Lcom/google/android/gms/internal/measurement/t0;->zzyz:Lcom/google/android/gms/internal/measurement/t0;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/b4$c;-><init>(Lcom/google/android/gms/internal/measurement/b4;)V

    .line 13
    sput-object p1, Lcom/google/android/gms/internal/measurement/t0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

    .line 14
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 15
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/t0;->zzyz:Lcom/google/android/gms/internal/measurement/t0;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzyv"

    aput-object v0, p1, p2

    const-string p2, "zzyw"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzyx"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 16
    const-class p3, Lcom/google/android/gms/internal/measurement/m0;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzyy"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/google/android/gms/internal/measurement/u0;

    aput-object p3, p1, p2

    .line 17
    sget-object p2, Lcom/google/android/gms/internal/measurement/t0;->zzyz:Lcom/google/android/gms/internal/measurement/t0;

    const-string p3, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/b4;->a(Lcom/google/android/gms/internal/measurement/k5;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/t0$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/t0$a;-><init>(Lcom/google/android/gms/internal/measurement/k0;)V

    return-object p1

    .line 19
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/t0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)Lcom/google/android/gms/internal/measurement/m0;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyx:Lcom/google/android/gms/internal/measurement/i4;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/m0;

    return-object p1
.end method

.method public final c(I)Lcom/google/android/gms/internal/measurement/u0;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyy:Lcom/google/android/gms/internal/measurement/i4;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/u0;

    return-object p1
.end method

.method public final n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyv:Lcom/google/android/gms/internal/measurement/j4;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyv:Lcom/google/android/gms/internal/measurement/j4;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyw:Lcom/google/android/gms/internal/measurement/j4;

    return-object v0
.end method

.method public final q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyw:Lcom/google/android/gms/internal/measurement/j4;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/m0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyx:Lcom/google/android/gms/internal/measurement/i4;

    return-object v0
.end method

.method public final u()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyx:Lcom/google/android/gms/internal/measurement/i4;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/u0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyy:Lcom/google/android/gms/internal/measurement/i4;

    return-object v0
.end method

.method public final w()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t0;->zzyy:Lcom/google/android/gms/internal/measurement/i4;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
