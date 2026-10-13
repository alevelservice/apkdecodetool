.class final Lcom/google/android/gms/internal/ads/j3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/je;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/i3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/i3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j3;->a:Lcom/google/android/gms/internal/ads/i3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j3;->a:Lcom/google/android/gms/internal/ads/i3;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/i3;->a(Lcom/google/android/gms/internal/ads/i3;)Lcom/google/android/gms/internal/ads/m3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/m3;->d()V

    return-void
.end method
