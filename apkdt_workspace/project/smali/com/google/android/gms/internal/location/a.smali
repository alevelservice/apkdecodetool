.class final Lcom/google/android/gms/internal/location/a;
.super Lcom/google/android/gms/internal/location/b;


# instance fields
.field private final synthetic o:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/v;Lcom/google/android/gms/common/api/f;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/location/a;->o:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/location/b;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/a$b;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/location/i;

    new-instance v0, Lcom/google/android/gms/internal/location/zzac;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/location/zzac;-><init>(Lcom/google/android/gms/common/api/internal/e;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/location/a;->o:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/location/i;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/location/zzaj;)V

    return-void
.end method
