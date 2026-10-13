.class public final Lcom/google/android/gms/internal/ads/ec0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cc0;

.field private final b:Lcom/google/android/gms/internal/ads/tz0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cc0;Lcom/google/android/gms/internal/ads/tz0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ec0;->a:Lcom/google/android/gms/internal/ads/cc0;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ec0;->b:Lcom/google/android/gms/internal/ads/tz0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/fu0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/fu0<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ec0;->b:Lcom/google/android/gms/internal/ads/tz0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ec0;->a:Lcom/google/android/gms/internal/ads/cc0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/hc0;->a(Lcom/google/android/gms/internal/ads/cc0;)Ljava/util/concurrent/Callable;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/tz0;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/gc0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/gc0;-><init>(Lcom/google/android/gms/internal/ads/ec0;Lcom/google/android/gms/internal/ads/fu0;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ec0;->b:Lcom/google/android/gms/internal/ads/tz0;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/hz0;Ljava/util/concurrent/Executor;)V

    return-void
.end method
