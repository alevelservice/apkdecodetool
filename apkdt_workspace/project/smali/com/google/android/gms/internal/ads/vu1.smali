.class public final Lcom/google/android/gms/internal/ads/vu1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# static fields
.field private static b:Lcom/google/android/gms/internal/ads/vu1;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private static final c:Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/gms/ads/RequestConfiguration;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/vu1;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/ads/RequestConfiguration$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/RequestConfiguration$a;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$a;->a()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vu1;->a:Lcom/google/android/gms/ads/RequestConfiguration;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/vu1;Ljava/util/List;)Lcom/google/android/gms/ads/n/b;
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vu1;->a(Ljava/util/List;)Lcom/google/android/gms/ads/n/b;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;)Lcom/google/android/gms/ads/n/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaex;",
            ">;)",
            "Lcom/google/android/gms/ads/n/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaex;

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaex;->e:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/l1;

    .line 4
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzaex;->f:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/gms/ads/n/a$a;->READY:Lcom/google/android/gms/ads/n/a$a;

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/google/android/gms/ads/n/a$a;->NOT_READY:Lcom/google/android/gms/ads/n/a$a;

    :goto_1
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaex;->h:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaex;->g:I

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/l1;-><init>(Lcom/google/android/gms/ads/n/a$a;Ljava/lang/String;I)V

    .line 5
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/m1;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/m1;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static b()Lcom/google/android/gms/internal/ads/vu1;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/vu1;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/vu1;->b:Lcom/google/android/gms/internal/ads/vu1;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/vu1;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/vu1;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/ads/vu1;->b:Lcom/google/android/gms/internal/ads/vu1;

    .line 4
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/vu1;->b:Lcom/google/android/gms/internal/ads/vu1;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/RequestConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vu1;->a:Lcom/google/android/gms/ads/RequestConfiguration;

    return-object v0
.end method
