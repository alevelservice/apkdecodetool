.class final Lcom/google/android/gms/internal/location/zzat;
.super Lcom/google/android/gms/location/zzv;


# instance fields
.field private final e:Lcom/google/android/gms/common/api/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/k<",
            "Lcom/google/android/gms/location/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/k<",
            "Lcom/google/android/gms/location/d;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/location/zzv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzat;->e:Lcom/google/android/gms/common/api/internal/k;

    return-void
.end method


# virtual methods
.method public final onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzat;->e:Lcom/google/android/gms/common/api/internal/k;

    new-instance v1, Lcom/google/android/gms/internal/location/g;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/location/g;-><init>(Lcom/google/android/gms/internal/location/zzat;Lcom/google/android/gms/location/LocationAvailability;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/k;->a(Lcom/google/android/gms/common/api/internal/k$b;)V

    return-void
.end method

.method public final onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzat;->e:Lcom/google/android/gms/common/api/internal/k;

    new-instance v1, Lcom/google/android/gms/internal/location/f;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/location/f;-><init>(Lcom/google/android/gms/internal/location/zzat;Lcom/google/android/gms/location/LocationResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/k;->a(Lcom/google/android/gms/common/api/internal/k$b;)V

    return-void
.end method

.method public final declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzat;->e:Lcom/google/android/gms/common/api/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/k;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
