.class Le/n/a/c$i$b;
.super Ljava/lang/Object;
.source "SqflitePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/n/a/c$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/Object;

.field final synthetic h:Le/n/a/c$i;


# direct methods
.method constructor <init>(Le/n/a/c$i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/a/c$i$b;->h:Le/n/a/c$i;

    iput-object p2, p0, Le/n/a/c$i$b;->e:Ljava/lang/String;

    iput-object p3, p0, Le/n/a/c$i$b;->f:Ljava/lang/String;

    iput-object p4, p0, Le/n/a/c$i$b;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/n/a/c$i$b;->h:Le/n/a/c$i;

    invoke-static {v0}, Le/n/a/c$i;->a(Le/n/a/c$i;)Lg/a/c/a/k$d;

    move-result-object v0

    iget-object v1, p0, Le/n/a/c$i$b;->e:Ljava/lang/String;

    iget-object v2, p0, Le/n/a/c$i$b;->f:Ljava/lang/String;

    iget-object v3, p0, Le/n/a/c$i$b;->g:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
