.class Lcom/zoloz/webcontainer/n/a/b$a;
.super Landroid/app/AlertDialog;
.source "H5LoadingPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoloz/webcontainer/n/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/zoloz/webcontainer/n/a/b;Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lcom/zoloz/webcontainer/h;->a:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zoloz/webcontainer/n/a/b$a;-><init>(Lcom/zoloz/webcontainer/n/a/b;Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Lcom/zoloz/webcontainer/n/a/b;Landroid/content/Context;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/zoloz/webcontainer/n/a/b$a;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zoloz/webcontainer/n/a/b$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/zoloz/webcontainer/n/a/b$a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/zoloz/webcontainer/n/a/b$a;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/zoloz/webcontainer/n/a/b$a;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/webcontainer/n/a/b$a;->g:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/zoloz/webcontainer/n/a/b$a;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/zoloz/webcontainer/n/a/b$a;->a()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    sget v1, Lcom/zoloz/webcontainer/f;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    sget v1, Lcom/zoloz/webcontainer/e;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/zoloz/webcontainer/n/a/b$a;->e:Landroid/widget/ProgressBar;

    .line 4
    sget v1, Lcom/zoloz/webcontainer/e;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zoloz/webcontainer/n/a/b$a;->f:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v3, 0x3f7d70a4    # 0.99f

    .line 6
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 7
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/zoloz/webcontainer/n/a/b$a;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 11
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 12
    iget-object v0, p0, Lcom/zoloz/webcontainer/n/a/b$a;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 13
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 14
    invoke-direct {p0}, Lcom/zoloz/webcontainer/n/a/b$a;->a()V

    .line 15
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
