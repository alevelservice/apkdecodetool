.class final Lcom/google/android/gms/location/e0;
.super Lcom/google/android/gms/common/api/internal/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/n<",
        "Lcom/google/android/gms/internal/location/i;",
        "Lcom/google/android/gms/location/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic d:Lcom/google/android/gms/internal/location/zzbd;

.field private final synthetic e:Lcom/google/android/gms/common/api/internal/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/common/api/internal/k;Lcom/google/android/gms/internal/location/zzbd;Lcom/google/android/gms/common/api/internal/k;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/location/e0;->d:Lcom/google/android/gms/internal/location/zzbd;

    iput-object p4, p0, Lcom/google/android/gms/location/e0;->e:Lcom/google/android/gms/common/api/internal/k;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/n;-><init>(Lcom/google/android/gms/common/api/internal/k;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/a$b;Le/i/b/b/d/i;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/location/i;

    new-instance v0, Lcom/google/android/gms/location/FusedLocationProviderClient$zza;

    invoke-direct {v0, p2}, Lcom/google/android/gms/location/FusedLocationProviderClient$zza;-><init>(Le/i/b/b/d/i;)V

    iget-object p2, p0, Lcom/google/android/gms/location/e0;->d:Lcom/google/android/gms/internal/location/zzbd;

    iget-object v1, p0, Lcom/google/android/gms/location/e0;->e:Lcom/google/android/gms/common/api/internal/k;

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/location/i;->a(Lcom/google/android/gms/internal/location/zzbd;Lcom/google/android/gms/common/api/internal/k;Lcom/google/android/gms/internal/location/zzaj;)V

    return-void
.end method
