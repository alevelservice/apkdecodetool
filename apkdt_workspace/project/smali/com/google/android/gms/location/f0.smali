.class final Lcom/google/android/gms/location/f0;
.super Lcom/google/android/gms/common/api/internal/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/u<",
        "Lcom/google/android/gms/internal/location/i;",
        "Lcom/google/android/gms/location/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Lcom/google/android/gms/location/FusedLocationProviderClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/common/api/internal/k$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/f0;->b:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/u;-><init>(Lcom/google/android/gms/common/api/internal/k$a;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/a$b;Le/i/b/b/d/i;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/location/i;

    iget-object v0, p0, Lcom/google/android/gms/location/f0;->b:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-static {v0, p2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->a(Lcom/google/android/gms/location/FusedLocationProviderClient;Le/i/b/b/d/i;)Lcom/google/android/gms/internal/location/zzaj;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->a()Lcom/google/android/gms/common/api/internal/k$a;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/location/i;->a(Lcom/google/android/gms/common/api/internal/k$a;Lcom/google/android/gms/internal/location/zzaj;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p2, p1}, Le/i/b/b/d/i;->b(Ljava/lang/Exception;)Z

    return-void
.end method
