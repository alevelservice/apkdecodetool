.class final Lcom/google/android/gms/internal/location/w;
.super Lcom/google/android/gms/internal/location/b;


# instance fields
.field private final synthetic o:Lcom/google/android/gms/location/LocationRequest;

.field private final synthetic p:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/v;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/location/w;->o:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/location/w;->p:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/location/b;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/a$b;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/location/i;

    new-instance v0, Lcom/google/android/gms/internal/location/zzac;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/location/zzac;-><init>(Lcom/google/android/gms/common/api/internal/e;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/location/w;->o:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/location/w;->p:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/location/i;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/location/zzaj;)V

    return-void
.end method
