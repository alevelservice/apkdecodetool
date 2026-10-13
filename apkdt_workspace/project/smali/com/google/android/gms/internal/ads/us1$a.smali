.class public final Lcom/google/android/gms/internal/ads/us1$a;
.super Lcom/google/android/gms/internal/ads/e91;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qa1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/us1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/us1$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/e91<",
        "Lcom/google/android/gms/internal/ads/us1$a;",
        "Lcom/google/android/gms/internal/ads/us1$a$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/qa1;"
    }
.end annotation


# static fields
.field private static final zzbwq:Lcom/google/android/gms/internal/ads/m91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/m91<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/ads/ss1$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbwy:Lcom/google/android/gms/internal/ads/us1$a;

.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/wa1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wa1<",
            "Lcom/google/android/gms/internal/ads/us1$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbwl:J

.field private zzbwm:I

.field private zzbwn:J

.field private zzbwo:J

.field private zzbwp:Lcom/google/android/gms/internal/ads/j91;

.field private zzbwr:Lcom/google/android/gms/internal/ads/ts1;

.field private zzbws:I

.field private zzbwt:I

.field private zzbwu:I

.field private zzbwv:I

.field private zzbww:I

.field private zzbwx:I

.field private zzdj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/it1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/it1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwq:Lcom/google/android/gms/internal/ads/m91;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/us1$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/us1$a;-><init>()V

    .line 3
    sput-object v0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwy:Lcom/google/android/gms/internal/ads/us1$a;

    .line 4
    const-class v1, Lcom/google/android/gms/internal/ads/us1$a;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/e91;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/e91;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/e91;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/e91;->i()Lcom/google/android/gms/internal/ads/j91;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwp:Lcom/google/android/gms/internal/ads/j91;

    return-void
.end method

.method public static a([B)Lcom/google/android/gms/internal/ads/us1$a;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwy:Lcom/google/android/gms/internal/ads/us1$a;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/e91;->a(Lcom/google/android/gms/internal/ads/e91;[B)Lcom/google/android/gms/internal/ads/e91;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/us1$a;

    return-object p0
.end method

.method private final a(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwl:J

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/bt1;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bt1;->zzab()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwm:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final a(Lcom/google/android/gms/internal/ads/ts1;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwr:Lcom/google/android/gms/internal/ads/ts1;

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/us1$a;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/us1$a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/us1$a;J)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/us1$a;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/us1$a;Lcom/google/android/gms/internal/ads/bt1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/us1$a;->a(Lcom/google/android/gms/internal/ads/bt1;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/us1$a;Lcom/google/android/gms/internal/ads/ts1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/us1$a;->a(Lcom/google/android/gms/internal/ads/ts1;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/us1$a;Lcom/google/android/gms/internal/ads/us1$b;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/us1$a;->a(Lcom/google/android/gms/internal/ads/us1$b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/us1$a;Ljava/lang/Iterable;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/us1$a;->a(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/us1$b;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/us1$b;->zzab()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwx:I

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final a(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/ss1$a;",
            ">;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwp:Lcom/google/android/gms/internal/ads/j91;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/l91;->R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwp:Lcom/google/android/gms/internal/ads/j91;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/e91;->a(Lcom/google/android/gms/internal/ads/j91;)Lcom/google/android/gms/internal/ads/j91;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwp:Lcom/google/android/gms/internal/ads/j91;

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ss1$a;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwp:Lcom/google/android/gms/internal/ads/j91;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ss1$a;->zzab()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/j91;->h(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final b(I)V
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwv:I

    return-void
.end method

.method private final b(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwn:J

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/bt1;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bt1;->zzab()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbws:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/us1$a;J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/us1$a;->b(J)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/us1$a;Lcom/google/android/gms/internal/ads/bt1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/us1$a;->b(Lcom/google/android/gms/internal/ads/bt1;)V

    return-void
.end method

.method private final c(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwo:J

    return-void
.end method

.method private final c(Lcom/google/android/gms/internal/ads/bt1;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bt1;->zzab()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwt:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/us1$a;J)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/us1$a;->c(J)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/us1$a;Lcom/google/android/gms/internal/ads/bt1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/us1$a;->c(Lcom/google/android/gms/internal/ads/bt1;)V

    return-void
.end method

.method private final d(Lcom/google/android/gms/internal/ads/bt1;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bt1;->zzab()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwu:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/us1$a;Lcom/google/android/gms/internal/ads/bt1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/us1$a;->d(Lcom/google/android/gms/internal/ads/bt1;)V

    return-void
.end method

.method private final e(Lcom/google/android/gms/internal/ads/bt1;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzdj:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bt1;->zzab()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbww:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/us1$a;Lcom/google/android/gms/internal/ads/bt1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/us1$a;->e(Lcom/google/android/gms/internal/ads/bt1;)V

    return-void
.end method

.method public static n()Lcom/google/android/gms/internal/ads/us1$a$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwy:Lcom/google/android/gms/internal/ads/us1$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91;->h()Lcom/google/android/gms/internal/ads/e91$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/us1$a$a;

    return-object v0
.end method

.method static synthetic o()Lcom/google/android/gms/internal/ads/us1$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwy:Lcom/google/android/gms/internal/ads/us1$a;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 18
    sget-object p2, Lcom/google/android/gms/internal/ads/ys1;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 19
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 20
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/us1$a;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_1

    .line 22
    const-class p2, Lcom/google/android/gms/internal/ads/us1$a;

    monitor-enter p2

    .line 23
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/us1$a;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/e91$c;

    sget-object p3, Lcom/google/android/gms/internal/ads/us1$a;->zzbwy:Lcom/google/android/gms/internal/ads/us1$a;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/e91$c;-><init>(Lcom/google/android/gms/internal/ads/e91;)V

    .line 25
    sput-object p1, Lcom/google/android/gms/internal/ads/us1$a;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    .line 26
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

    .line 27
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/us1$a;->zzbwy:Lcom/google/android/gms/internal/ads/us1$a;

    return-object p1

    :pswitch_4
    const/16 p1, 0x14

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdj"

    aput-object v0, p1, p2

    const-string p2, "zzbwl"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzbwm"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/bt1;->zzac()Lcom/google/android/gms/internal/ads/k91;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzbwn"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzbwo"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzbwp"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/ss1$a;->zzac()Lcom/google/android/gms/internal/ads/k91;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzbwr"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzbws"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/bt1;->zzac()Lcom/google/android/gms/internal/ads/k91;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzbwt"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/bt1;->zzac()Lcom/google/android/gms/internal/ads/k91;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzbwu"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/bt1;->zzac()Lcom/google/android/gms/internal/ads/k91;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzbwv"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzbww"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/bt1;->zzac()Lcom/google/android/gms/internal/ads/k91;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzbwx"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/us1$b;->zzac()Lcom/google/android/gms/internal/ads/k91;

    move-result-object p3

    aput-object p3, p1, p2

    .line 35
    sget-object p2, Lcom/google/android/gms/internal/ads/us1$a;->zzbwy:Lcom/google/android/gms/internal/ads/us1$a;

    const-string p3, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0001\u0000\u0001\u0002\u0000\u0002\u000c\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u001e\u0006\t\u0004\u0007\u000c\u0005\u0008\u000c\u0006\t\u000c\u0007\n\u0004\u0008\u000b\u000c\t\u000c\u000c\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/e91;->a(Lcom/google/android/gms/internal/ads/oa1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 36
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/us1$a$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/us1$a$a;-><init>(Lcom/google/android/gms/internal/ads/ys1;)V

    return-object p1

    .line 37
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/us1$a;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/us1$a;-><init>()V

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

.method public final k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwl:J

    return-wide v0
.end method

.method public final m()Lcom/google/android/gms/internal/ads/bt1;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/us1$a;->zzbwm:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bt1;->zzbu(I)Lcom/google/android/gms/internal/ads/bt1;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/bt1;->zzbvj:Lcom/google/android/gms/internal/ads/bt1;

    :cond_0
    return-object v0
.end method
