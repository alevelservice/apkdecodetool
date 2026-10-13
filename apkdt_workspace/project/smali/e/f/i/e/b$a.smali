.class Le/f/i/e/b$a;
.super Ljava/lang/Object;
.source "DefaultImageDecoder.java"

# interfaces
.implements Le/f/i/e/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/i/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/f/i/e/b;


# direct methods
.method constructor <init>(Le/f/i/e/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/i/e/b$a;->a:Le/f/i/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/f/i/g/e;ILe/f/i/g/h;Lcom/facebook/imagepipeline/common/b;)Le/f/i/g/c;
    .locals 2

    .line 1
    invoke-virtual {p1}, Le/f/i/g/e;->p()Le/f/h/c;

    move-result-object v0

    .line 2
    sget-object v1, Le/f/h/b;->a:Le/f/h/c;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Le/f/i/e/b$a;->a:Le/f/i/e/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Le/f/i/e/b;->d(Le/f/i/g/e;ILe/f/i/g/h;Lcom/facebook/imagepipeline/common/b;)Le/f/i/g/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object v1, Le/f/h/b;->c:Le/f/h/c;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Le/f/i/e/b$a;->a:Le/f/i/e/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Le/f/i/e/b;->c(Le/f/i/g/e;ILe/f/i/g/h;Lcom/facebook/imagepipeline/common/b;)Le/f/i/g/c;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    sget-object v1, Le/f/h/b;->j:Le/f/h/c;

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Le/f/i/e/b$a;->a:Le/f/i/e/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Le/f/i/e/b;->b(Le/f/i/g/e;ILe/f/i/g/h;Lcom/facebook/imagepipeline/common/b;)Le/f/i/g/c;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    sget-object p2, Le/f/h/c;->b:Le/f/h/c;

    if-eq v0, p2, :cond_3

    .line 9
    iget-object p2, p0, Le/f/i/e/b$a;->a:Le/f/i/e/b;

    invoke-virtual {p2, p1, p4}, Le/f/i/e/b;->a(Le/f/i/g/e;Lcom/facebook/imagepipeline/common/b;)Le/f/i/g/d;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    new-instance p2, Le/f/i/e/a;

    const-string p3, "unknown image format"

    invoke-direct {p2, p3, p1}, Le/f/i/e/a;-><init>(Ljava/lang/String;Le/f/i/g/e;)V

    throw p2
.end method
