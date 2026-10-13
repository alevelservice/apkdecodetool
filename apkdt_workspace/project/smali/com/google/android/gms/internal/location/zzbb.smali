.class final Lcom/google/android/gms/internal/location/zzbb;
.super Lcom/google/android/gms/internal/location/zzan;


# instance fields
.field private e:Lcom/google/android/gms/common/api/internal/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/e<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/e<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/location/zzan;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzbb;->e:Lcom/google/android/gms/common/api/internal/e;

    return-void
.end method

.method private final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbb;->e:Lcom/google/android/gms/common/api/internal/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/location/h;->a(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/location/h;->b(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbb;->e:Lcom/google/android/gms/common/api/internal/e;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/e;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzbb;->e:Lcom/google/android/gms/common/api/internal/e;

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/location/zzbb;->a(I)V

    return-void
.end method

.method public final zza(I[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzb(I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/location/zzbb;->a(I)V

    return-void
.end method
