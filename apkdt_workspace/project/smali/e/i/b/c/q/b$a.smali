.class Le/i/b/c/q/b$a;
.super Landroidx/core/content/res/e$a;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/c/q/b;->a(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/TextPaint;

.field final synthetic b:Landroidx/core/content/res/e$a;

.field final synthetic c:Le/i/b/c/q/b;


# direct methods
.method constructor <init>(Le/i/b/c/q/b;Landroid/text/TextPaint;Landroidx/core/content/res/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/c/q/b$a;->c:Le/i/b/c/q/b;

    iput-object p2, p0, Le/i/b/c/q/b$a;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Le/i/b/c/q/b$a;->b:Landroidx/core/content/res/e$a;

    invoke-direct {p0}, Landroidx/core/content/res/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 5
    iget-object v0, p0, Le/i/b/c/q/b$a;->c:Le/i/b/c/q/b;

    invoke-static {v0}, Le/i/b/c/q/b;->a(Le/i/b/c/q/b;)V

    .line 6
    iget-object v0, p0, Le/i/b/c/q/b$a;->c:Le/i/b/c/q/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Le/i/b/c/q/b;->a(Le/i/b/c/q/b;Z)Z

    .line 7
    iget-object v0, p0, Le/i/b/c/q/b$a;->b:Landroidx/core/content/res/e$a;

    invoke-virtual {v0, p1}, Landroidx/core/content/res/e$a;->a(I)V

    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Le/i/b/c/q/b$a;->c:Le/i/b/c/q/b;

    iget v1, v0, Le/i/b/c/q/b;->c:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Le/i/b/c/q/b;->a(Le/i/b/c/q/b;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object v0, p0, Le/i/b/c/q/b$a;->c:Le/i/b/c/q/b;

    iget-object v1, p0, Le/i/b/c/q/b$a;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Le/i/b/c/q/b;->a(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 3
    iget-object v0, p0, Le/i/b/c/q/b$a;->c:Le/i/b/c/q/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Le/i/b/c/q/b;->a(Le/i/b/c/q/b;Z)Z

    .line 4
    iget-object v0, p0, Le/i/b/c/q/b$a;->b:Landroidx/core/content/res/e$a;

    invoke-virtual {v0, p1}, Landroidx/core/content/res/e$a;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
