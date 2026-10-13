.class final Lcom/google/android/gms/location/d0;
.super Lcom/google/android/gms/common/api/internal/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/s<",
        "Lcom/google/android/gms/internal/location/i;",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/s;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/a$b;Le/i/b/b/d/i;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/location/i;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/i;->B()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/i/b/b/d/i;->a(Ljava/lang/Object;)V

    return-void
.end method
