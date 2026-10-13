.class public abstract Lcom/google/android/gms/internal/measurement/z7;
.super Ljava/lang/Object;


# instance fields
.field protected volatile a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/measurement/z7;->a:I

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Lcom/google/android/gms/internal/measurement/o7;)Lcom/google/android/gms/internal/measurement/z7;
.end method

.method public a(Lcom/google/android/gms/internal/measurement/r7;)V
    .locals 0

    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/z7;->a()I

    move-result v0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/measurement/z7;->a:I

    return v0
.end method

.method public c()Lcom/google/android/gms/internal/measurement/z7;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/z7;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/z7;->c()Lcom/google/android/gms/internal/measurement/z7;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/y7;->a(Lcom/google/android/gms/internal/measurement/z7;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
