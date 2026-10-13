.class public final Lcom/google/android/gms/internal/measurement/u0;
.super Lcom/google/android/gms/internal/measurement/b4;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/m5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/u0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/b4<",
        "Lcom/google/android/gms/internal/measurement/u0;",
        "Lcom/google/android/gms/internal/measurement/u0$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/m5;"
    }
.end annotation


# static fields
.field private static volatile zzuo:Lcom/google/android/gms/internal/measurement/s5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/s5<",
            "Lcom/google/android/gms/internal/measurement/u0;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzzb:Lcom/google/android/gms/internal/measurement/u0;


# instance fields
.field private zzue:I

.field private zzwg:I

.field private zzza:Lcom/google/android/gms/internal/measurement/j4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/u0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/u0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/u0;->zzzb:Lcom/google/android/gms/internal/measurement/u0;

    .line 2
    const-class v0, Lcom/google/android/gms/internal/measurement/u0;

    sget-object v1, Lcom/google/android/gms/internal/measurement/u0;->zzzb:Lcom/google/android/gms/internal/measurement/u0;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->zzza:Lcom/google/android/gms/internal/measurement/j4;

    return-void
.end method

.method private final a(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/u0;->s()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->zzza:Lcom/google/android/gms/internal/measurement/j4;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/j4;->h(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/u0;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/u0;->u()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/u0;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/u0;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/u0;J)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/u0;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/u0;Ljava/lang/Iterable;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/u0;->a(Ljava/lang/Iterable;)V

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

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/u0;->s()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->zzza:Lcom/google/android/gms/internal/measurement/j4;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/j2;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final c(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/u0;->zzue:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/u0;->zzue:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/measurement/u0;->zzwg:I

    return-void
.end method

.method private final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->zzza:Lcom/google/android/gms/internal/measurement/j4;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/i4;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->zzza:Lcom/google/android/gms/internal/measurement/j4;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b4;->a(Lcom/google/android/gms/internal/measurement/j4;)Lcom/google/android/gms/internal/measurement/j4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->zzza:Lcom/google/android/gms/internal/measurement/j4;

    :cond_0
    return-void
.end method

.method private final u()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b4;->l()Lcom/google/android/gms/internal/measurement/j4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->zzza:Lcom/google/android/gms/internal/measurement/j4;

    return-void
.end method

.method public static v()Lcom/google/android/gms/internal/measurement/u0$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/u0;->zzzb:Lcom/google/android/gms/internal/measurement/u0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b4;->h()Lcom/google/android/gms/internal/measurement/b4$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u0$a;

    return-object v0
.end method

.method static synthetic w()Lcom/google/android/gms/internal/measurement/u0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/u0;->zzzb:Lcom/google/android/gms/internal/measurement/u0;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/measurement/k0;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 7
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/u0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

    if-nez p1, :cond_1

    .line 9
    const-class p2, Lcom/google/android/gms/internal/measurement/u0;

    monitor-enter p2

    .line 10
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/u0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

    if-nez p1, :cond_0

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/measurement/b4$c;

    sget-object p3, Lcom/google/android/gms/internal/measurement/u0;->zzzb:Lcom/google/android/gms/internal/measurement/u0;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/b4$c;-><init>(Lcom/google/android/gms/internal/measurement/b4;)V

    .line 12
    sput-object p1, Lcom/google/android/gms/internal/measurement/u0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

    .line 13
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

    .line 14
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/u0;->zzzb:Lcom/google/android/gms/internal/measurement/u0;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzue"

    aput-object v0, p1, p2

    const-string p2, "zzwg"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzza"

    aput-object p3, p1, p2

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/measurement/u0;->zzzb:Lcom/google/android/gms/internal/measurement/u0;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0004\u0000\u0002\u0014"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/b4;->a(Lcom/google/android/gms/internal/measurement/k5;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/u0$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/u0$a;-><init>(Lcom/google/android/gms/internal/measurement/k0;)V

    return-object p1

    .line 17
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/u0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/u0;-><init>()V

    return-object p1

    nop

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

.method public final b(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->zzza:Lcom/google/android/gms/internal/measurement/j4;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/j4;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/u0;->zzwg:I

    return v0
.end method

.method public final o()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/u0;->zzue:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->zzza:Lcom/google/android/gms/internal/measurement/j4;

    return-object v0
.end method

.method public final q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u0;->zzza:Lcom/google/android/gms/internal/measurement/j4;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
