.class final synthetic Lcom/google/android/gms/internal/ads/df0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qy0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ef0;

.field private final b:Lcom/google/android/gms/internal/ads/ns0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ef0;Lcom/google/android/gms/internal/ads/ns0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/df0;->a:Lcom/google/android/gms/internal/ads/ef0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/df0;->b:Lcom/google/android/gms/internal/ads/ns0;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df0;->a:Lcom/google/android/gms/internal/ads/ef0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/df0;->b:Lcom/google/android/gms/internal/ads/ns0;

    check-cast p1, Lcom/google/android/gms/internal/ads/y40;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ef0;->a(Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/y40;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method
