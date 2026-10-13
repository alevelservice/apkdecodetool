.class final synthetic Lcom/google/android/gms/internal/ads/y2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/q2;

.field private final f:Lcom/google/android/gms/internal/ads/m3;

.field private final g:Lcom/google/android/gms/internal/ads/h2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/q2;Lcom/google/android/gms/internal/ads/m3;Lcom/google/android/gms/internal/ads/h2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y2;->e:Lcom/google/android/gms/internal/ads/q2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/y2;->f:Lcom/google/android/gms/internal/ads/m3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/y2;->g:Lcom/google/android/gms/internal/ads/h2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y2;->e:Lcom/google/android/gms/internal/ads/q2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y2;->f:Lcom/google/android/gms/internal/ads/m3;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/y2;->g:Lcom/google/android/gms/internal/ads/h2;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/q2;->a(Lcom/google/android/gms/internal/ads/m3;Lcom/google/android/gms/internal/ads/h2;)V

    return-void
.end method
