.class public abstract Lcom/google/android/gms/common/api/internal/n;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/a$b;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/k<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Lcom/google/android/gms/common/Feature;

.field private final c:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/k;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/k<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/k;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/n;->b:[Lcom/google/android/gms/common/Feature;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/n;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/k;->a()V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/common/api/a$b;Le/i/b/b/d/i;)V
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Le/i/b/b/d/i<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public b()Lcom/google/android/gms/common/api/internal/k$a;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/k$a<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/k;->b()Lcom/google/android/gms/common/api/internal/k$a;

    move-result-object v0

    return-object v0
.end method

.method public c()[Lcom/google/android/gms/common/Feature;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->b:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/n;->c:Z

    return v0
.end method
