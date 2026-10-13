.class final synthetic Lcom/google/android/gms/internal/ads/su0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qy0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fu0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/fu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/su0;->a:Lcom/google/android/gms/internal/ads/fu0;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su0;->a:Lcom/google/android/gms/internal/ads/fu0;

    check-cast p1, Ljava/lang/Throwable;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/fu0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method
