import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SectionOneComponent } from './section-one/section-one.component';
import { SectionTwoComponent } from './section-two/section-two.component';
import { SectionThreeComponent } from './section-three/section-three.component';
import { SectionFourComponent } from './section-four/section-four.component';
import { SectionFiveComponent } from './section-five/section-five.component';
import { SectionSixComponent } from './section-six/section-six.component';
import { SectionSevenComponent } from './section-seven/section-seven.component';
import { FooterComponent } from './footer/footer.component';



@NgModule({
  declarations: [
                  SectionOneComponent,
                  SectionTwoComponent,
                  SectionThreeComponent,
                  SectionFourComponent,
                  SectionFiveComponent,
                  SectionSixComponent,
                  SectionSevenComponent,
                  FooterComponent
                ],
  imports: [
    CommonModule
  ],
  exports: [
    SectionOneComponent,
    SectionTwoComponent,
    SectionThreeComponent,
    SectionFourComponent,
    SectionFiveComponent,
    SectionSixComponent,
    SectionSevenComponent,
    FooterComponent
  ]
})
export class CurriculumModule { }
