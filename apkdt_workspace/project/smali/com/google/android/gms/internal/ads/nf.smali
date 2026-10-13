.class final Lcom/google/android/gms/internal/ads/nf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/ads/cf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/kf;Lcom/google/android/gms/internal/ads/cf;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nf;->e:Lcom/google/android/gms/internal/ads/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nf;->e:Lcom/google/android/gms/internal/ads/cf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cf;->zzwv()V

    return-void
.end method
