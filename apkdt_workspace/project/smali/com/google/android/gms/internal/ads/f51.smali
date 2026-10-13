.class public final Lcom/google/android/gms/internal/ads/f51;
.super Lcom/google/android/gms/internal/ads/e91;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qa1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/f51$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/e91<",
        "Lcom/google/android/gms/internal/ads/f51;",
        "Lcom/google/android/gms/internal/ads/f51$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/qa1;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/wa1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wa1<",
            "Lcom/google/android/gms/internal/ads/f51;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgyl:Lcom/google/android/gms/internal/ads/f51;


# instance fields
.field private zzgyj:Ljava/lang/String;

.field private zzgyk:Lcom/google/android/gms/internal/ads/r41;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/f51;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/f51;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/ads/f51;->zzgyl:Lcom/google/android/gms/internal/ads/f51;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/ads/f51;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/e91;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/e91;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/e91;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/f51;->zzgyj:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/f51;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/f51;->zzgyl:Lcom/google/android/gms/internal/ads/f51;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/e91;->a(Lcom/google/android/gms/internal/ads/e91;Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/e91;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/f51;

    return-object p0
.end method

.method public static n()Lcom/google/android/gms/internal/ads/f51;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/f51;->zzgyl:Lcom/google/android/gms/internal/ads/f51;

    return-object v0
.end method

.method static synthetic o()Lcom/google/android/gms/internal/ads/f51;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/f51;->zzgyl:Lcom/google/android/gms/internal/ads/f51;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/ads/g51;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 4
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/f51;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_1

    .line 6
    const-class p2, Lcom/google/android/gms/internal/ads/f51;

    monitor-enter p2

    .line 7
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/f51;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/e91$c;

    sget-object p3, Lcom/google/android/gms/internal/ads/f51;->zzgyl:Lcom/google/android/gms/internal/ads/f51;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/e91$c;-><init>(Lcom/google/android/gms/internal/ads/e91;)V

    .line 9
    sput-object p1, Lcom/google/android/gms/internal/ads/f51;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    .line 10
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

    .line 11
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/f51;->zzgyl:Lcom/google/android/gms/internal/ads/f51;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzgyj"

    aput-object v0, p1, p2

    const-string p2, "zzgyk"

    aput-object p2, p1, p3

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/f51;->zzgyl:Lcom/google/android/gms/internal/ads/f51;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/e91;->a(Lcom/google/android/gms/internal/ads/oa1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/f51$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/f51$a;-><init>(Lcom/google/android/gms/internal/ads/g51;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/f51;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/f51;-><init>()V

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

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f51;->zzgyj:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/internal/ads/r41;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f51;->zzgyk:Lcom/google/android/gms/internal/ads/r41;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/r41;->n()Lcom/google/android/gms/internal/ads/r41;

    move-result-object v0

    :cond_0
    return-object v0
.end method
