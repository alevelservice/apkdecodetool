.class public final Lcom/google/android/gms/internal/ads/lg1;
.super Lcom/google/android/gms/internal/ads/sg1;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# static fields
.field private static volatile l:Ljava/lang/Long;

.field private static final m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/lg1;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/cf1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ev$b;II)V
    .locals 7

    const/16 v6, 0x21

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/sg1;-><init>(Lcom/google/android/gms/internal/ads/cf1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ev$b;II)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/lg1;->l:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/lg1;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/lg1;->l:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sg1;->i:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sput-object v1, Lcom/google/android/gms/internal/ads/lg1;->l:Ljava/lang/Long;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sg1;->h:Lcom/google/android/gms/internal/ads/ev$b;

    monitor-enter v0

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sg1;->h:Lcom/google/android/gms/internal/ads/ev$b;

    sget-object v2, Lcom/google/android/gms/internal/ads/lg1;->l:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/ev$b;->o(J)Lcom/google/android/gms/internal/ads/ev$b;

    .line 8
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
