.class final synthetic Lcom/google/android/gms/internal/ads/aa0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/t11;

.field private final f:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/t11;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aa0;->e:Lcom/google/android/gms/internal/ads/t11;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aa0;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa0;->e:Lcom/google/android/gms/internal/ads/t11;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aa0;->f:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t11;->a()Lcom/google/android/gms/internal/ads/cz0;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cz0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
