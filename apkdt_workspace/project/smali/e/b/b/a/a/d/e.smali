.class Le/b/b/a/a/d/e;
.super Ljava/lang/Object;
.source "LogContextImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Landroid/os/Bundle;

.field final synthetic h:Le/b/b/a/a/d/c;


# direct methods
.method constructor <init>(Le/b/b/a/a/d/c;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/b/a/a/d/e;->h:Le/b/b/a/a/d/c;

    iput-object p2, p0, Le/b/b/a/a/d/e;->e:Ljava/lang/String;

    iput-object p3, p0, Le/b/b/a/a/d/e;->f:Ljava/lang/String;

    iput-object p4, p0, Le/b/b/a/a/d/e;->g:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/e;->h:Le/b/b/a/a/d/c;

    iget-object v1, p0, Le/b/b/a/a/d/e;->e:Ljava/lang/String;

    iget-object v2, p0, Le/b/b/a/a/d/e;->f:Ljava/lang/String;

    iget-object v3, p0, Le/b/b/a/a/d/e;->g:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Le/b/b/a/a/d/c;->a(Le/b/b/a/a/d/c;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
