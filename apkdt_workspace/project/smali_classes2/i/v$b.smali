.class public final Li/v$b;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field final a:Li/r;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final b:Li/a0;


# direct methods
.method private constructor <init>(Li/r;Li/a0;)V
    .locals 0
    .param p1    # Li/r;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/v$b;->a:Li/r;

    .line 3
    iput-object p2, p0, Li/v$b;->b:Li/a0;

    return-void
.end method

.method public static a(Li/r;Li/a0;)Li/v$b;
    .locals 1
    .param p0    # Li/r;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_4

    if-eqz p0, :cond_1

    const-string v0, "Content-Type"

    .line 1
    invoke-virtual {p0, v0}, Li/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    const-string v0, "Content-Length"

    .line 3
    invoke-virtual {p0, v0}, Li/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    :goto_1
    new-instance v0, Li/v$b;

    invoke-direct {v0, p0, p1}, Li/v$b;-><init>(Li/r;Li/a0;)V

    return-object v0

    .line 6
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "body == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Li/v$b;
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-static {v0, p1}, Li/a0;->a(Li/u;Ljava/lang/String;)Li/a0;

    move-result-object p1

    invoke-static {p0, v0, p1}, Li/v$b;->a(Ljava/lang/String;Ljava/lang/String;Li/a0;)Li/v$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Li/a0;)Li/v$b;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {v0, p0}, Li/v;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p0, "; filename="

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {v0, p1}, Li/v;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_0
    new-instance p0, Li/r$a;

    invoke-direct {p0}, Li/r$a;-><init>()V

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0, p1}, Li/r$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/r$a;

    .line 14
    invoke-virtual {p0}, Li/r$a;->a()Li/r;

    move-result-object p0

    .line 15
    invoke-static {p0, p2}, Li/v$b;->a(Li/r;Li/a0;)Li/v$b;

    move-result-object p0

    return-object p0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
