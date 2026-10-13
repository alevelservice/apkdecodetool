.class final Lcom/google/android/gms/internal/ads/vj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Landroid/view/View;

.field private final synthetic f:Lcom/google/android/gms/internal/ads/t8;

.field private final synthetic g:I

.field private final synthetic h:Lcom/google/android/gms/internal/ads/tj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tj;Landroid/view/View;Lcom/google/android/gms/internal/ads/t8;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj;->h:Lcom/google/android/gms/internal/ads/tj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vj;->e:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vj;->f:Lcom/google/android/gms/internal/ads/t8;

    iput p4, p0, Lcom/google/android/gms/internal/ads/vj;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vj;->h:Lcom/google/android/gms/internal/ads/tj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vj;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vj;->f:Lcom/google/android/gms/internal/ads/t8;

    iget v3, p0, Lcom/google/android/gms/internal/ads/vj;->g:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/tj;->a(Lcom/google/android/gms/internal/ads/tj;Landroid/view/View;Lcom/google/android/gms/internal/ads/t8;I)V

    return-void
.end method
