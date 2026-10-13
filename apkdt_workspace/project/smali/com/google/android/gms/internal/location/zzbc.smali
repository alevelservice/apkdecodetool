.class final Lcom/google/android/gms/internal/location/zzbc;
.super Lcom/google/android/gms/internal/location/zzar;


# instance fields
.field private e:Lcom/google/android/gms/common/api/internal/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/e<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/e<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/location/zzar;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "listener can\'t be null."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/m;->a(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzbc;->e:Lcom/google/android/gms/common/api/internal/e;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/location/LocationSettingsResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbc;->e:Lcom/google/android/gms/common/api/internal/e;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/e;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzbc;->e:Lcom/google/android/gms/common/api/internal/e;

    return-void
.end method
