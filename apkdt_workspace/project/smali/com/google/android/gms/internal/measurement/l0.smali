.class public final Lcom/google/android/gms/internal/measurement/l0;
.super Lcom/google/android/gms/internal/measurement/b4;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/m5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/l0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/b4<",
        "Lcom/google/android/gms/internal/measurement/l0;",
        "Lcom/google/android/gms/internal/measurement/l0$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/m5;"
    }
.end annotation


# static fields
.field private static volatile zzuo:Lcom/google/android/gms/internal/measurement/s5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/s5<",
            "Lcom/google/android/gms/internal/measurement/l0;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzwf:Lcom/google/android/gms/internal/measurement/l0;


# instance fields
.field private zzue:I

.field private zzwb:I

.field private zzwc:Lcom/google/android/gms/internal/measurement/t0;

.field private zzwd:Lcom/google/android/gms/internal/measurement/t0;

.field private zzwe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/l0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/l0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/l0;->zzwf:Lcom/google/android/gms/internal/measurement/l0;

    .line 2
    const-class v0, Lcom/google/android/gms/internal/measurement/l0;

    sget-object v1, Lcom/google/android/gms/internal/measurement/l0;->zzwf:Lcom/google/android/gms/internal/measurement/l0;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/b4;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/b4;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b4;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/l0;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/l0;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/l0;Lcom/google/android/gms/internal/measurement/t0$a;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/l0;->a(Lcom/google/android/gms/internal/measurement/t0$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/l0;Lcom/google/android/gms/internal/measurement/t0;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/l0;->a(Lcom/google/android/gms/internal/measurement/t0;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/l0;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/l0;->a(Z)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/t0$a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/t0;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/l0;->zzwc:Lcom/google/android/gms/internal/measurement/t0;

    .line 2
    iget p1, p0, Lcom/google/android/gms/internal/measurement/l0;->zzue:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/l0;->zzue:I

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/t0;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/l0;->zzwd:Lcom/google/android/gms/internal/measurement/t0;

    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/measurement/l0;->zzue:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/measurement/l0;->zzue:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final a(Z)V
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l0;->zzue:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/l0;->zzue:I

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/l0;->zzwe:Z

    return-void
.end method

.method private final b(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l0;->zzue:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/l0;->zzue:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/measurement/l0;->zzwb:I

    return-void
.end method

.method public static w()Lcom/google/android/gms/internal/measurement/l0$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/l0;->zzwf:Lcom/google/android/gms/internal/measurement/l0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b4;->h()Lcom/google/android/gms/internal/measurement/b4$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/l0$a;

    return-object v0
.end method

.method static synthetic x()Lcom/google/android/gms/internal/measurement/l0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/l0;->zzwf:Lcom/google/android/gms/internal/measurement/l0;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/measurement/k0;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 10
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/l0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

    if-nez p1, :cond_1

    .line 12
    const-class p2, Lcom/google/android/gms/internal/measurement/l0;

    monitor-enter p2

    .line 13
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/l0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/measurement/b4$c;

    sget-object p3, Lcom/google/android/gms/internal/measurement/l0;->zzwf:Lcom/google/android/gms/internal/measurement/l0;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/b4$c;-><init>(Lcom/google/android/gms/internal/measurement/b4;)V

    .line 15
    sput-object p1, Lcom/google/android/gms/internal/measurement/l0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

    .line 16
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

    .line 17
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/l0;->zzwf:Lcom/google/android/gms/internal/measurement/l0;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzue"

    aput-object v0, p1, p2

    const-string p2, "zzwb"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzwc"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzwd"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzwe"

    aput-object p3, p1, p2

    .line 18
    sget-object p2, Lcom/google/android/gms/internal/measurement/l0;->zzwf:Lcom/google/android/gms/internal/measurement/l0;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0000\u0002\t\u0001\u0003\t\u0002\u0004\u0007\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/b4;->a(Lcom/google/android/gms/internal/measurement/k5;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/l0$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/l0$a;-><init>(Lcom/google/android/gms/internal/measurement/k0;)V

    return-object p1

    .line 20
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/l0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/l0;-><init>()V

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

.method public final n()Lcom/google/android/gms/internal/measurement/t0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l0;->zzwc:Lcom/google/android/gms/internal/measurement/t0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/t0;->C()Lcom/google/android/gms/internal/measurement/t0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l0;->zzue:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Lcom/google/android/gms/internal/measurement/t0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l0;->zzwd:Lcom/google/android/gms/internal/measurement/t0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/t0;->C()Lcom/google/android/gms/internal/measurement/t0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final q()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l0;->zzue:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l0;->zzwb:I

    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l0;->zzue:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/l0;->zzwe:Z

    return v0
.end method
