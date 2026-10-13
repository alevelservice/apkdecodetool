.class final synthetic Lcom/google/android/gms/internal/ads/ap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wv;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/kv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/kv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ap;->e:Lcom/google/android/gms/internal/ads/kv;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ap;->e:Lcom/google/android/gms/internal/ads/kv;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kv;->g()V

    return-void
.end method
