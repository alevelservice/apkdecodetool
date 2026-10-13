.class public final Lcom/google/android/gms/internal/measurement/q0;
.super Lcom/google/android/gms/internal/measurement/b4;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/m5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/q0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/b4<",
        "Lcom/google/android/gms/internal/measurement/q0;",
        "Lcom/google/android/gms/internal/measurement/q0$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/m5;"
    }
.end annotation


# static fields
.field private static volatile zzuo:Lcom/google/android/gms/internal/measurement/s5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/s5<",
            "Lcom/google/android/gms/internal/measurement/q0;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzww:Lcom/google/android/gms/internal/measurement/q0;


# instance fields
.field private zzwv:Lcom/google/android/gms/internal/measurement/i4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/i4<",
            "Lcom/google/android/gms/internal/measurement/r0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/q0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/q0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/q0;->zzww:Lcom/google/android/gms/internal/measurement/q0;

    .line 2
    const-class v0, Lcom/google/android/gms/internal/measurement/q0;

    sget-object v1, Lcom/google/android/gms/internal/measurement/q0;->zzww:Lcom/google/android/gms/internal/measurement/q0;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/q0;->zzwv:Lcom/google/android/gms/internal/measurement/i4;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/q0;Lcom/google/android/gms/internal/measurement/r0$a;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/q0;->a(Lcom/google/android/gms/internal/measurement/r0$a;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/r0$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q0;->zzwv:Lcom/google/android/gms/internal/measurement/i4;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/i4;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q0;->zzwv:Lcom/google/android/gms/internal/measurement/i4;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b4;->a(Lcom/google/android/gms/internal/measurement/i4;)Lcom/google/android/gms/internal/measurement/i4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/q0;->zzwv:Lcom/google/android/gms/internal/measurement/i4;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q0;->zzwv:Lcom/google/android/gms/internal/measurement/i4;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/r0;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static o()Lcom/google/android/gms/internal/measurement/q0$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q0;->zzww:Lcom/google/android/gms/internal/measurement/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b4;->h()Lcom/google/android/gms/internal/measurement/b4$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/q0$a;

    return-object v0
.end method

.method static synthetic p()Lcom/google/android/gms/internal/measurement/q0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q0;->zzww:Lcom/google/android/gms/internal/measurement/q0;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/q0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

    if-nez p1, :cond_1

    .line 9
    const-class p2, Lcom/google/android/gms/internal/measurement/q0;

    monitor-enter p2

    .line 10
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/q0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

    if-nez p1, :cond_0

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/measurement/b4$c;

    sget-object p3, Lcom/google/android/gms/internal/measurement/q0;->zzww:Lcom/google/android/gms/internal/measurement/q0;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/b4$c;-><init>(Lcom/google/android/gms/internal/measurement/b4;)V

    .line 12
    sput-object p1, Lcom/google/android/gms/internal/measurement/q0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/q0;->zzww:Lcom/google/android/gms/internal/measurement/q0;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzwv"

    aput-object v0, p1, p2

    .line 15
    const-class p2, Lcom/google/android/gms/internal/measurement/r0;

    aput-object p2, p1, p3

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/measurement/q0;->zzww:Lcom/google/android/gms/internal/measurement/q0;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/b4;->a(Lcom/google/android/gms/internal/measurement/k5;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/q0$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/q0$a;-><init>(Lcom/google/android/gms/internal/measurement/k0;)V

    return-object p1

    .line 18
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/q0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/q0;-><init>()V

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

.method public final b(I)Lcom/google/android/gms/internal/measurement/r0;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/q0;->zzwv:Lcom/google/android/gms/internal/measurement/i4;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/r0;

    return-object p1
.end method

.method public final n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/r0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q0;->zzwv:Lcom/google/android/gms/internal/measurement/i4;

    return-object v0
.end method
