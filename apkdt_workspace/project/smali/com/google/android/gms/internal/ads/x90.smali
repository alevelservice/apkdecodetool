.class final synthetic Lcom/google/android/gms/internal/ads/x90;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qy0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/s90;

.field private final b:Lcom/google/android/gms/internal/ads/zzaok;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/s90;Lcom/google/android/gms/internal/ads/zzaok;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x90;->a:Lcom/google/android/gms/internal/ads/s90;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/x90;->b:Lcom/google/android/gms/internal/ads/zzaok;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x90;->a:Lcom/google/android/gms/internal/ads/s90;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x90;->b:Lcom/google/android/gms/internal/ads/zzaok;

    check-cast p1, Lcom/google/android/gms/internal/ads/gb0;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/s90;->a(Lcom/google/android/gms/internal/ads/zzaok;Lcom/google/android/gms/internal/ads/gb0;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method
