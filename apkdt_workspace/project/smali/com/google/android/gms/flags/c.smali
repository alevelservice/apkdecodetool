.class public final Lcom/google/android/gms/flags/c;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static b:Lcom/google/android/gms/flags/c;


# instance fields
.field private final a:Lcom/google/android/gms/flags/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/flags/c;

    invoke-direct {v0}, Lcom/google/android/gms/flags/c;-><init>()V

    .line 2
    const-class v1, Lcom/google/android/gms/flags/c;

    monitor-enter v1

    .line 3
    :try_start_0
    sput-object v0, Lcom/google/android/gms/flags/c;->b:Lcom/google/android/gms/flags/c;

    .line 4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/flags/b;

    invoke-direct {v0}, Lcom/google/android/gms/flags/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/flags/c;->a:Lcom/google/android/gms/flags/b;

    .line 3
    new-instance v0, Lcom/google/android/gms/flags/e;

    invoke-direct {v0}, Lcom/google/android/gms/flags/e;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/flags/b;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/flags/c;->b()Lcom/google/android/gms/flags/c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/flags/c;->a:Lcom/google/android/gms/flags/b;

    return-object v0
.end method

.method private static b()Lcom/google/android/gms/flags/c;
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/flags/c;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/android/gms/flags/c;->b:Lcom/google/android/gms/flags/c;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
