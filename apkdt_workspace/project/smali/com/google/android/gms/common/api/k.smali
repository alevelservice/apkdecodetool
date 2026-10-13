.class public Lcom/google/android/gms/common/api/k;
.super Lcom/google/android/gms/common/api/b;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public getResolution()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->mStatus:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->j()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public startResolutionForResult(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->mStatus:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/Status;->a(Landroid/app/Activity;I)V

    return-void
.end method
