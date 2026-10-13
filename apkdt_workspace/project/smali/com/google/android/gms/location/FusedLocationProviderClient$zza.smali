.class final Lcom/google/android/gms/location/FusedLocationProviderClient$zza;
.super Lcom/google/android/gms/internal/location/zzak;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/FusedLocationProviderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final e:Le/i/b/b/d/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/b/d/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/i/b/b/d/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/b/d/i<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/location/zzak;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/FusedLocationProviderClient$zza;->e:Le/i/b/b/d/i;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/location/zzad;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzad;->i()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/location/FusedLocationProviderClient$zza;->e:Le/i/b/b/d/i;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/t;->a(Lcom/google/android/gms/common/api/Status;Le/i/b/b/d/i;)V

    return-void
.end method
