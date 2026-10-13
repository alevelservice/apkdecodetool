.class final synthetic Lcom/google/android/gms/internal/ads/qb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/pb;

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qb;->e:Lcom/google/android/gms/internal/ads/pb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qb;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qb;->e:Lcom/google/android/gms/internal/ads/pb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qb;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/pb;->a(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
