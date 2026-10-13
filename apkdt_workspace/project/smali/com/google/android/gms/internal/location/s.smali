.class final Lcom/google/android/gms/internal/location/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/location/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/location/m<",
        "Lcom/google/android/gms/internal/location/zzao;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/location/r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/location/s;->a:Lcom/google/android/gms/internal/location/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/s;->a:Lcom/google/android/gms/internal/location/r;

    invoke-static {v0}, Lcom/google/android/gms/internal/location/r;->a(Lcom/google/android/gms/internal/location/r;)V

    return-void
.end method

.method public final synthetic b()Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/s;->a:Lcom/google/android/gms/internal/location/r;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->u()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzao;

    return-object v0
.end method
