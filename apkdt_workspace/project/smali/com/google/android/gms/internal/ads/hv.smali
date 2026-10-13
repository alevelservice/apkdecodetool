.class public final Lcom/google/android/gms/internal/ads/hv;
.super Lcom/google/android/gms/internal/ads/e91;
.source "com.google.android.gms:play-services-gass@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qa1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/hv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/e91<",
        "Lcom/google/android/gms/internal/ads/hv;",
        "Lcom/google/android/gms/internal/ads/hv$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/qa1;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/wa1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wa1<",
            "Lcom/google/android/gms/internal/ads/hv;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzlf:Lcom/google/android/gms/internal/ads/hv;


# instance fields
.field private zzdj:I

.field private zzka:J

.field private zzld:Ljava/lang/String;

.field private zzle:Lcom/google/android/gms/internal/ads/t71;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/hv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/hv;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/ads/hv;->zzlf:Lcom/google/android/gms/internal/ads/hv;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/ads/hv;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/e91;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/e91;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/e91;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hv;->zzld:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/t71;->zzhfn:Lcom/google/android/gms/internal/ads/t71;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hv;->zzle:Lcom/google/android/gms/internal/ads/t71;

    return-void
.end method

.method public static n()Lcom/google/android/gms/internal/ads/hv;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/hv;->zzlf:Lcom/google/android/gms/internal/ads/hv;

    return-object v0
.end method

.method static synthetic o()Lcom/google/android/gms/internal/ads/hv;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/hv;->zzlf:Lcom/google/android/gms/internal/ads/hv;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->a:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/hv;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/android/gms/internal/ads/hv;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/hv;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/e91$c;

    sget-object p3, Lcom/google/android/gms/internal/ads/hv;->zzlf:Lcom/google/android/gms/internal/ads/hv;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/e91$c;-><init>(Lcom/google/android/gms/internal/ads/e91;)V

    .line 8
    sput-object p1, Lcom/google/android/gms/internal/ads/hv;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/hv;->zzlf:Lcom/google/android/gms/internal/ads/hv;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdj"

    aput-object v0, p1, p2

    const-string p2, "zzka"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzld"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzle"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/hv;->zzlf:Lcom/google/android/gms/internal/ads/hv;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001\u0002\u0000\u0003\u0008\u0001\u0004\n\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/e91;->a(Lcom/google/android/gms/internal/ads/oa1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/hv$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hv$a;-><init>(Lcom/google/android/gms/internal/ads/kw;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/hv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/hv;-><init>()V

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

.method public final k()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/hv;->zzdj:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hv;->zzka:J

    return-wide v0
.end method
