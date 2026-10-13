.class final synthetic Lcom/google/android/gms/internal/ads/rb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/pb;

.field private final f:I

.field private final g:I

.field private final h:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pb;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->e:Lcom/google/android/gms/internal/ads/pb;

    iput p2, p0, Lcom/google/android/gms/internal/ads/rb;->f:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/rb;->g:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/rb;->h:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->e:Lcom/google/android/gms/internal/ads/pb;

    iget v1, p0, Lcom/google/android/gms/internal/ads/rb;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/rb;->g:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/rb;->h:I

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/pb;->a(IIILandroid/content/DialogInterface;I)V

    return-void
.end method
