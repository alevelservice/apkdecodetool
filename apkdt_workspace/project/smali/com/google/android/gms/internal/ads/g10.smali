.class final synthetic Lcom/google/android/gms/internal/ads/g10;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/d10;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/d10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g10;->e:Lcom/google/android/gms/internal/ads/d10;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g10;->e:Lcom/google/android/gms/internal/ads/d10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d10;->n()V

    return-void
.end method
