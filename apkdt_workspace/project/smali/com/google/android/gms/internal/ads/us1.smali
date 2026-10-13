.class public final Lcom/google/android/gms/internal/ads/us1;
.super Lcom/google/android/gms/internal/ads/e91;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qa1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/us1$c;,
        Lcom/google/android/gms/internal/ads/us1$a;,
        Lcom/google/android/gms/internal/ads/us1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/e91<",
        "Lcom/google/android/gms/internal/ads/us1;",
        "Lcom/google/android/gms/internal/ads/us1$c;",
        ">;",
        "Lcom/google/android/gms/internal/ads/qa1;"
    }
.end annotation


# static fields
.field private static final zzbxe:Lcom/google/android/gms/internal/ads/us1;

.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/wa1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wa1<",
            "Lcom/google/android/gms/internal/ads/us1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbtu:Lcom/google/android/gms/internal/ads/l91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/l91<",
            "Lcom/google/android/gms/internal/ads/us1$a;",
            ">;"
        }
    .end annotation
.end field

.field private zzbwz:I

.field private zzbxa:I

.field private zzbxb:J

.field private zzbxc:Ljava/lang/String;

.field private zzbxd:J

.field private zzdj:I

.field private zzdk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/us1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/us1;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/ads/us1;->zzbxe:Lcom/google/android/gms/internal/ads/us1;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/ads/us1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/e91;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/e91;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/e91;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/e91;->j()Lcom/google/android/gms/internal/ads/l91;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzbtu:Lcom/google/android/gms/internal/ads/l91;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzdk:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzbxc:Ljava/lang/String;

    return-void
.end method

.method private final a(J)V
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzdj:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzdj:I

    .line 6
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/us1;->zzbxb:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/us1;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/us1;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/us1;J)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/us1;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/us1;Ljava/lang/Iterable;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/us1;->a(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/us1;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/us1;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/us1$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzbtu:Lcom/google/android/gms/internal/ads/l91;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/l91;->R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzbtu:Lcom/google/android/gms/internal/ads/l91;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/e91;->a(Lcom/google/android/gms/internal/ads/l91;)Lcom/google/android/gms/internal/ads/l91;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzbtu:Lcom/google/android/gms/internal/ads/l91;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzbtu:Lcom/google/android/gms/internal/ads/l91;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/m71;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzdj:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzdj:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/us1;->zzbxc:Ljava/lang/String;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final b(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzdj:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzdj:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/us1;->zzbwz:I

    return-void
.end method

.method private final b(J)V
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzdj:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzdj:I

    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/us1;->zzbxd:J

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/us1;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/us1;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/us1;J)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/us1;->b(J)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/us1;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/us1;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzdj:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzdj:I

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/us1;->zzdk:Ljava/lang/String;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final c(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzdj:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/us1;->zzdj:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/us1;->zzbxa:I

    return-void
.end method

.method public static k()Lcom/google/android/gms/internal/ads/us1$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/us1;->zzbxe:Lcom/google/android/gms/internal/ads/us1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91;->h()Lcom/google/android/gms/internal/ads/e91$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/us1$c;

    return-object v0
.end method

.method static synthetic m()Lcom/google/android/gms/internal/ads/us1;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/us1;->zzbxe:Lcom/google/android/gms/internal/ads/us1;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/ads/ys1;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 12
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/us1;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_1

    .line 14
    const-class p2, Lcom/google/android/gms/internal/ads/us1;

    monitor-enter p2

    .line 15
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/us1;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/e91$c;

    sget-object p3, Lcom/google/android/gms/internal/ads/us1;->zzbxe:Lcom/google/android/gms/internal/ads/us1;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/e91$c;-><init>(Lcom/google/android/gms/internal/ads/e91;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/ads/us1;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    .line 18
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

    .line 19
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/us1;->zzbxe:Lcom/google/android/gms/internal/ads/us1;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdj"

    aput-object v0, p1, p2

    const-string p2, "zzbtu"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 20
    const-class p3, Lcom/google/android/gms/internal/ads/us1$a;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbwz"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzbxa"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzbxb"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzdk"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzbxc"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzbxd"

    aput-object p3, p1, p2

    .line 21
    sget-object p2, Lcom/google/android/gms/internal/ads/us1;->zzbxe:Lcom/google/android/gms/internal/ads/us1;

    const-string p3, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u001b\u0002\u0004\u0000\u0003\u0004\u0001\u0004\u0002\u0002\u0005\u0008\u0003\u0006\u0008\u0004\u0007\u0002\u0005"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/e91;->a(Lcom/google/android/gms/internal/ads/oa1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/us1$c;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/us1$c;-><init>(Lcom/google/android/gms/internal/ads/ys1;)V

    return-object p1

    .line 23
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/us1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/us1;-><init>()V

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
