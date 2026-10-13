.class final synthetic Lcom/google/android/gms/internal/ads/p4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pw0;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/o0;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    check-cast p1, Lcom/google/android/gms/internal/ads/p3;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/p3;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    return-object p1
.end method
