.class final synthetic Lcom/google/android/gms/internal/ads/j60;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/f60;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/f60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j60;->e:Lcom/google/android/gms/internal/ads/f60;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j60;->e:Lcom/google/android/gms/internal/ads/f60;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/f60;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
