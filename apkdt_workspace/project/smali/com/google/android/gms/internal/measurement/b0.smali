.class public final Lcom/google/android/gms/internal/measurement/b0;
.super Lcom/google/android/gms/internal/measurement/b4;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/m5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/b0$a;,
        Lcom/google/android/gms/internal/measurement/b0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/b4<",
        "Lcom/google/android/gms/internal/measurement/b0;",
        "Lcom/google/android/gms/internal/measurement/b0$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/m5;"
    }
.end annotation


# static fields
.field private static volatile zzuo:Lcom/google/android/gms/internal/measurement/s5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/s5<",
            "Lcom/google/android/gms/internal/measurement/b0;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzuz:Lcom/google/android/gms/internal/measurement/b0;


# instance fields
.field private zzue:I

.field private zzuu:I

.field private zzuv:Z

.field private zzuw:Ljava/lang/String;

.field private zzux:Ljava/lang/String;

.field private zzuy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/b0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/b0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/b0;->zzuz:Lcom/google/android/gms/internal/measurement/b0;

    .line 2
    const-class v0, Lcom/google/android/gms/internal/measurement/b0;

    sget-object v1, Lcom/google/android/gms/internal/measurement/b0;->zzuz:Lcom/google/android/gms/internal/measurement/b0;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/b4;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/b4;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b4;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b0;->zzuw:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b0;->zzux:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b0;->zzuy:Ljava/lang/String;

    return-void
.end method

.method static synthetic A()Lcom/google/android/gms/internal/measurement/b0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/b0;->zzuz:Lcom/google/android/gms/internal/measurement/b0;

    return-object v0
.end method

.method public static z()Lcom/google/android/gms/internal/measurement/b0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/b0;->zzuz:Lcom/google/android/gms/internal/measurement/b0;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/measurement/y;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 3
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/b0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/android/gms/internal/measurement/b0;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/b0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/measurement/b4$c;

    sget-object p3, Lcom/google/android/gms/internal/measurement/b0;->zzuz:Lcom/google/android/gms/internal/measurement/b0;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/b4$c;-><init>(Lcom/google/android/gms/internal/measurement/b4;)V

    .line 8
    sput-object p1, Lcom/google/android/gms/internal/measurement/b0;->zzuo:Lcom/google/android/gms/internal/measurement/s5;

    .line 9
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

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/b0;->zzuz:Lcom/google/android/gms/internal/measurement/b0;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzue"

    aput-object v0, p1, p2

    const-string p2, "zzuu"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b0$b;->zzlh()Lcom/google/android/gms/internal/measurement/h4;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzuv"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzuw"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzux"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzuy"

    aput-object p3, p1, p2

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/measurement/b0;->zzuz:Lcom/google/android/gms/internal/measurement/b0;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u0007\u0001\u0003\u0008\u0002\u0004\u0008\u0003\u0005\u0008\u0004"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/b4;->a(Lcom/google/android/gms/internal/measurement/k5;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/b0$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/b0$a;-><init>(Lcom/google/android/gms/internal/measurement/y;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/b0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/b0;-><init>()V

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

.method public final n()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b0;->zzue:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Lcom/google/android/gms/internal/measurement/b0$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b0;->zzuu:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b0$b;->zzf(I)Lcom/google/android/gms/internal/measurement/b0$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/b0$b;->zzva:Lcom/google/android/gms/internal/measurement/b0$b;

    :cond_0
    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b0;->zzue:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/b0;->zzuv:Z

    return v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b0;->zzue:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b0;->zzuw:Ljava/lang/String;

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b0;->zzue:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b0;->zzux:Ljava/lang/String;

    return-object v0
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b0;->zzue:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b0;->zzuy:Ljava/lang/String;

    return-object v0
.end method
