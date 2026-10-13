.class final synthetic Lcom/google/android/gms/internal/ads/o90;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/q90;

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/q90;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/o90;->e:Lcom/google/android/gms/internal/ads/q90;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/o90;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o90;->e:Lcom/google/android/gms/internal/ads/q90;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/o90;->f:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/q90;->a:Lcom/google/android/gms/internal/ads/e90;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/e90;->a(Lcom/google/android/gms/internal/ads/e90;Ljava/lang/String;)V

    return-void
.end method
