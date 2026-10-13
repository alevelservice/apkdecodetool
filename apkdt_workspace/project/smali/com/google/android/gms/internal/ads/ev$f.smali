.class public final Lcom/google/android/gms/internal/ads/ev$f;
.super Lcom/google/android/gms/internal/ads/e91;
.source "com.google.android.gms:play-services-gass@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qa1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/ev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/ev$f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/e91<",
        "Lcom/google/android/gms/internal/ads/ev$f;",
        "Lcom/google/android/gms/internal/ads/ev$f$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/qa1;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/wa1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wa1<",
            "Lcom/google/android/gms/internal/ads/ev$f;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjz:Lcom/google/android/gms/internal/ads/ev$f;


# instance fields
.field private zzdj:I

.field private zzgh:J

.field private zzgi:J

.field private zzjv:J

.field private zzjw:J

.field private zzjx:J

.field private zzjy:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ev$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ev$f;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/ads/ev$f;->zzjz:Lcom/google/android/gms/internal/ads/ev$f;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/ads/ev$f;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/e91;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/e91;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/e91;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzgh:J

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzgi:J

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzjv:J

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzjw:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzjx:J

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzjy:J

    return-void
.end method

.method private final a(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzdj:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzdj:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzjv:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ev$f;J)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ev$f;->a(J)V

    return-void
.end method

.method private final b(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzdj:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzdj:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzjw:J

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/ev$f;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ev$f;->b(J)V

    return-void
.end method

.method private final c(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzdj:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzdj:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzjx:J

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ev$f;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ev$f;->c(J)V

    return-void
.end method

.method private final d(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzdj:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzdj:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ev$f;->zzjy:J

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/ev$f;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ev$f;->d(J)V

    return-void
.end method

.method public static k()Lcom/google/android/gms/internal/ads/ev$f$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/ev$f;->zzjz:Lcom/google/android/gms/internal/ads/ev$f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91;->h()Lcom/google/android/gms/internal/ads/e91$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ev$f$a;

    return-object v0
.end method

.method static synthetic m()Lcom/google/android/gms/internal/ads/ev$f;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/ev$f;->zzjz:Lcom/google/android/gms/internal/ads/ev$f;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 5
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/ev$f;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_1

    .line 7
    const-class p2, Lcom/google/android/gms/internal/ads/ev$f;

    monitor-enter p2

    .line 8
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/ev$f;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_0

    .line 9
    new-instance p1, Lcom/google/android/gms/internal/ads/e91$c;

    sget-object p3, Lcom/google/android/gms/internal/ads/ev$f;->zzjz:Lcom/google/android/gms/internal/ads/ev$f;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/e91$c;-><init>(Lcom/google/android/gms/internal/ads/e91;)V

    .line 10
    sput-object p1, Lcom/google/android/gms/internal/ads/ev$f;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    .line 11
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

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/ev$f;->zzjz:Lcom/google/android/gms/internal/ads/ev$f;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdj"

    aput-object v0, p1, p2

    const-string p2, "zzgh"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzgi"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzjv"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzjw"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzjx"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzjy"

    aput-object p3, p1, p2

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/ads/ev$f;->zzjz:Lcom/google/android/gms/internal/ads/ev$f;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0002\u0000\u0002\u0002\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u0002\u0004\u0006\u0002\u0005"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/e91;->a(Lcom/google/android/gms/internal/ads/oa1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/ev$f$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/ev$f$a;-><init>(Lcom/google/android/gms/internal/ads/kw;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/ev$f;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ev$f;-><init>()V

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
