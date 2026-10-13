.class final synthetic Lcom/google/android/gms/internal/ads/wn0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/rn0;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/gms/internal/ads/he;

.field private final h:Landroid/os/Bundle;

.field private final i:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rn0;Ljava/lang/String;Lcom/google/android/gms/internal/ads/he;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wn0;->e:Lcom/google/android/gms/internal/ads/rn0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wn0;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wn0;->g:Lcom/google/android/gms/internal/ads/he;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/wn0;->h:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/wn0;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wn0;->e:Lcom/google/android/gms/internal/ads/rn0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wn0;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wn0;->g:Lcom/google/android/gms/internal/ads/he;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/wn0;->h:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/wn0;->i:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/rn0;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/he;Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method
