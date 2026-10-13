.class final Lcom/google/android/gms/internal/ads/f1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qy0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/qy0<",
        "Lcom/google/android/gms/internal/ads/zzaep;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zzaej;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/e1;Lcom/google/android/gms/internal/ads/zzaej;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f1;->a:Lcom/google/android/gms/internal/ads/zzaej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaep;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/he;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/he;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f1;->a:Lcom/google/android/gms/internal/ads/zzaej;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaet;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzaet;-><init>(Lcom/google/android/gms/internal/ads/f1;Lcom/google/android/gms/internal/ads/he;)V

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaep;->zza(Lcom/google/android/gms/internal/ads/zzaej;Lcom/google/android/gms/internal/ads/zzaen;)V

    return-object v0
.end method
