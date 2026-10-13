.class final Lcom/google/android/gms/internal/ads/hf1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/ads/cf1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cf1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hf1;->e:Lcom/google/android/gms/internal/ads/cf1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hf1;->e:Lcom/google/android/gms/internal/ads/cf1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cf1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aw1;->a(Landroid/content/Context;)V

    return-void
.end method
