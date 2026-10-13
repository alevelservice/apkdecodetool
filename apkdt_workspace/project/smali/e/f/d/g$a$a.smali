.class Le/f/d/g$a$a;
.super Ljava/lang/Object;
.source "IncreasingQualityDataSourceSupplier.java"

# interfaces
.implements Le/f/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/d/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/d/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Le/f/d/g$a;


# direct methods
.method public constructor <init>(Le/f/d/g$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/d/g$a$a;->b:Le/f/d/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Le/f/d/g$a$a;->a:I

    return-void
.end method


# virtual methods
.method public a(Le/f/d/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/d/c<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Le/f/d/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/d/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/d/g$a$a;->b:Le/f/d/g$a;

    iget v1, p0, Le/f/d/g$a$a;->a:I

    invoke-static {v0, v1, p1}, Le/f/d/g$a;->b(Le/f/d/g$a;ILe/f/d/c;)V

    return-void
.end method

.method public c(Le/f/d/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/d/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Le/f/d/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/f/d/g$a$a;->b:Le/f/d/g$a;

    iget v1, p0, Le/f/d/g$a$a;->a:I

    invoke-static {v0, v1, p1}, Le/f/d/g$a;->a(Le/f/d/g$a;ILe/f/d/c;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Le/f/d/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/f/d/g$a$a;->b:Le/f/d/g$a;

    iget v1, p0, Le/f/d/g$a$a;->a:I

    invoke-static {v0, v1, p1}, Le/f/d/g$a;->b(Le/f/d/g$a;ILe/f/d/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Le/f/d/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/d/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/f/d/g$a$a;->a:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/f/d/g$a$a;->b:Le/f/d/g$a;

    invoke-interface {p1}, Le/f/d/c;->getProgress()F

    move-result p1

    invoke-virtual {v0, p1}, Le/f/d/a;->a(F)Z

    :cond_0
    return-void
.end method
