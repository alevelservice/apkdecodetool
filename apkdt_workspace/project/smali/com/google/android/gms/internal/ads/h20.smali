.class final Lcom/google/android/gms/internal/ads/h20;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/g;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/t20;

.field private final synthetic b:Landroid/view/ViewGroup;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/c20;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/c20;Lcom/google/android/gms/internal/ads/t20;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h20;->c:Lcom/google/android/gms/internal/ads/c20;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/h20;->a:Lcom/google/android/gms/internal/ads/t20;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/h20;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h20;->c:Lcom/google/android/gms/internal/ads/c20;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/h20;->a:Lcom/google/android/gms/internal/ads/t20;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbun;->zzflv:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/c20;->a(Lcom/google/android/gms/internal/ads/c20;Lcom/google/android/gms/internal/ads/t20;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h20;->a:Lcom/google/android/gms/internal/ads/t20;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/h20;->b:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h20;->a:Lcom/google/android/gms/internal/ads/t20;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method
