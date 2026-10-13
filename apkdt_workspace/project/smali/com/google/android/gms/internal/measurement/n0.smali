.class public final Lcom/google/android/gms/internal/measurement/n0;
.super Lcom/google/android/gms/internal/measurement/b4;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/m5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/n0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/b4<",
        "Lcom/google/android/gms/internal/measurement/n0;",
        "Lcom/google/android/gms/internal/measurement/n0$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/m5;"
    }
.end annotation


# static fields
.field private static volatile zzuo:Lcom/google/android/gms/internal/measurement/s5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/s5<",
            "Lcom/google/android/gms/internal/measurement/n0;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzwo:Lcom/google/android/gms/internal/measurement/n0;


# instance fields
.field private zzue:I

.field private zzwj:Lcom/google/android/gms/internal/measurement/i4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/i4<",
            "Lcom/google/android/gms/internal/measurement/p0;",
            ">;"
        }
    .end annotation
.end field

.field private zzwk:Ljava/lang/String;

.field private zzwl:J

.field private zzwm:J

.field private zzwn:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/n0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/n0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/n0;->zzwo:Lcom/google/android/gms/internal/measurement/n0;

    .line 2
    const-class v0, Lcom/google/android/gms/internal/measurement/n0;

    sget-object v1, Lcom/google/android/gms/internal/measurement/n0;->zzwo:Lcom/google/android/gms/internal/measurement/n0;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/b4;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/b4;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b4;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b4;->m()Lcom/google/android/gms/internal/measurement/i4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwj:Lcom/google/android/gms/internal/measurement/i4;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwk:Ljava/lang/String;

    return-void
.end method

.method static synthetic A()Lcom/google/android/gms/internal/measurement/n0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/n0;->zzwo:Lcom/google/android/gms/internal/measurement/n0;

    return-object v0
.end method

.method public static a([BLcom/google/android/gms/internal/measurement/o3;)Lcom/google/android/gms/internal/measurement/n0;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/measurement/n0;->zzwo:Lcom/google/android/gms/internal/measurement/n0;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/b4;->a(Lcom/google/android/gms/internal/measurement/b4;[BLcom/google/android/gms/internal/measurement/o3;)Lcom/google/android/gms/internal/measurement/b4;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n0;

    return-object p0
.end method

.method private final a(ILcom/google/android/gms/internal/measurement/p0$a;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/n0;->y()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwj:Lcom/google/android/gms/internal/measurement/i4;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/p0;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final a(ILcom/google/android/gms/internal/measurement/p0;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/n0;->y()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwj:Lcom/google/android/gms/internal/measurement/i4;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final a(J)V
    .locals 1

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzue:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzue:I

    .line 15
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwl:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/n0;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/n0;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/n0;ILcom/google/android/gms/internal/measurement/p0$a;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/n0;->a(ILcom/google/android/gms/internal/measurement/p0$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/n0;ILcom/google/android/gms/internal/measurement/p0;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/n0;->a(ILcom/google/android/gms/internal/measurement/p0;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/n0;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/n0;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/n0;Lcom/google/android/gms/internal/measurement/p0$a;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/n0;->a(Lcom/google/android/gms/internal/measurement/p0$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/n0;Lcom/google/android/gms/internal/measurement/p0;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/n0;->a(Lcom/google/android/gms/internal/measurement/p0;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/n0;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/p0$a;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/n0;->y()V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwj:Lcom/google/android/gms/internal/measurement/i4;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/p0;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/p0;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/n0;->y()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwj:Lcom/google/android/gms/internal/measurement/i4;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzue:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzue:I

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwk:Ljava/lang/String;

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final b(J)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzue:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzue:I

    .line 3
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwm:J

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/n0;J)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/n0;->b(J)V

    return-void
.end method

.method private final c(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/n0;->y()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwj:Lcom/google/android/gms/internal/measurement/i4;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private final y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwj:Lcom/google/android/gms/internal/measurement/i4;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/i4;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwj:Lcom/google/android/gms/internal/measurement/i4;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b4;->a(Lcom/google/android/gms/internal/measurement/i4;)Lcom/google/android/gms/internal/measurement/i4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwj:Lcom/google/android/gms/internal/measurement/i4;

    :cond_0
    return-void
.end method

.method public static z()Lcom/google/android/gms/internal/measurement/n0$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/n0;->zzwo:Lcom/google/android/gms/internal/measurement/n0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b4;->h()Lcom/google/android/gms/internal/measurement/b4$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n0$a;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 17
    sget-object p2, Lcom/google/android/gms/internal/measurement/k0;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 18
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 19
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/n0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

    if-nez p1, :cond_1

    .line 21
    const-class p2, Lcom/google/android/gms/internal/measurement/n0;

    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/n0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/measurement/b4$c;

    sget-object p3, Lcom/google/android/gms/internal/measurement/n0;->zzwo:Lcom/google/android/gms/internal/measurement/n0;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/b4$c;-><init>(Lcom/google/android/gms/internal/measurement/b4;)V

    .line 24
    sput-object p1, Lcom/google/android/gms/internal/measurement/n0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

    .line 25
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

    .line 26
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/n0;->zzwo:Lcom/google/android/gms/internal/measurement/n0;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzue"

    aput-object v0, p1, p2

    const-string p2, "zzwj"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 27
    const-class p3, Lcom/google/android/gms/internal/measurement/p0;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzwk"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzwl"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzwm"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzwn"

    aput-object p3, p1, p2

    .line 28
    sget-object p2, Lcom/google/android/gms/internal/measurement/n0;->zzwo:Lcom/google/android/gms/internal/measurement/n0;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\u0008\u0000\u0003\u0002\u0001\u0004\u0002\u0002\u0005\u0004\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/b4;->a(Lcom/google/android/gms/internal/measurement/k5;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/n0$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/n0$a;-><init>(Lcom/google/android/gms/internal/measurement/k0;)V

    return-object p1

    .line 30
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/n0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/n0;-><init>()V

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

.method public final b(I)Lcom/google/android/gms/internal/measurement/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwj:Lcom/google/android/gms/internal/measurement/i4;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/p0;

    return-object p1
.end method

.method public final n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwn:I

    return v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwk:Ljava/lang/String;

    return-object v0
.end method

.method public final p()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwl:J

    return-wide v0
.end method

.method public final q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/p0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwj:Lcom/google/android/gms/internal/measurement/i4;

    return-object v0
.end method

.method public final s()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwj:Lcom/google/android/gms/internal/measurement/i4;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzue:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzwm:J

    return-wide v0
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzue:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/n0;->zzue:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
