.class public final Lcom/google/android/gms/internal/measurement/a8;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    sput-object v0, Lcom/google/android/gms/internal/measurement/a8;->a:[B

    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/measurement/o7;I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o7;->a()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/o7;->a(I)Z

    const/4 v1, 0x1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o7;->c()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/o7;->a(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/o7;->b(II)V

    return v1
.end method
