.class final synthetic Lcom/google/android/gms/internal/ads/qh0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/iu0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/oh0;

.field private final b:Lcom/google/android/gms/internal/ads/zzzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/oh0;Lcom/google/android/gms/internal/ads/zzzk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qh0;->a:Lcom/google/android/gms/internal/ads/oh0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qh0;->b:Lcom/google/android/gms/internal/ads/zzzk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qh0;->a:Lcom/google/android/gms/internal/ads/oh0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qh0;->b:Lcom/google/android/gms/internal/ads/zzzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/oh0;->a(Lcom/google/android/gms/internal/ads/zzzk;)V

    return-void
.end method
