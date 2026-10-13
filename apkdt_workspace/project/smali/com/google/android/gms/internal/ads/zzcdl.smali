.class public final Lcom/google/android/gms/internal/ads/zzcdl;
.super Lcom/google/android/gms/internal/ads/zzaoh;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/ads/bb0;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/bb0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdl;->e:Lcom/google/android/gms/internal/ads/bb0;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaoh;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzauw;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdl;->e:Lcom/google/android/gms/internal/ads/bb0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bb0;->e:Lcom/google/android/gms/internal/ads/he;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/ac;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzauw;->e:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzauw;->f:I

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/ac;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/he;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzb(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdl;->e:Lcom/google/android/gms/internal/ads/bb0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bb0;->e:Lcom/google/android/gms/internal/ads/he;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/he;->b(Ljava/lang/Object;)Z

    return-void
.end method
