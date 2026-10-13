.class Le/f/f/d/b$b;
.super Ljava/lang/Object;
.source "AbstractDraweeControllerBuilder.java"

# interfaces
.implements Lcom/facebook/common/internal/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/f/f/d/b;->a(Le/f/f/i/a;Ljava/lang/String;Ljava/lang/Object;Le/f/f/d/b$c;)Lcom/facebook/common/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/j<",
        "Le/f/d/c<",
        "TIMAGE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Le/f/f/i/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Le/f/f/d/b$c;

.field final synthetic f:Le/f/f/d/b;


# direct methods
.method constructor <init>(Le/f/f/d/b;Le/f/f/i/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Le/f/f/d/b$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/f/d/b$b;->f:Le/f/f/d/b;

    iput-object p2, p0, Le/f/f/d/b$b;->a:Le/f/f/i/a;

    iput-object p3, p0, Le/f/f/d/b$b;->b:Ljava/lang/String;

    iput-object p4, p0, Le/f/f/d/b$b;->c:Ljava/lang/Object;

    iput-object p5, p0, Le/f/f/d/b$b;->d:Ljava/lang/Object;

    iput-object p6, p0, Le/f/f/d/b$b;->e:Le/f/f/d/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Le/f/d/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/d/c<",
            "TIMAGE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Le/f/f/d/b$b;->f:Le/f/f/d/b;

    iget-object v1, p0, Le/f/f/d/b$b;->a:Le/f/f/i/a;

    iget-object v2, p0, Le/f/f/d/b$b;->b:Ljava/lang/String;

    iget-object v3, p0, Le/f/f/d/b$b;->c:Ljava/lang/Object;

    iget-object v4, p0, Le/f/f/d/b$b;->d:Ljava/lang/Object;

    iget-object v5, p0, Le/f/f/d/b$b;->e:Le/f/f/d/b$c;

    invoke-virtual/range {v0 .. v5}, Le/f/f/d/b;->a(Le/f/f/i/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Le/f/f/d/b$c;)Le/f/d/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/f/f/d/b$b;->get()Le/f/d/c;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-object v1, p0, Le/f/f/d/b$b;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    invoke-virtual {v0}, Lcom/facebook/common/internal/g$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
